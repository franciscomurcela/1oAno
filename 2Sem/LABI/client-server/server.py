 #!/usr/bin/python3

from cgitb import reset
from re import M
import sys
import socket
import select
import json
import base64
import csv
import random
from unittest import result
from common_comm import send_dict, recv_dict, sendrecv_dict
from Crypto.Cipher import AES

# Dicionário com a informação relativa aos clientes
users = {}

# return the client_id of a socket or None
def find_client_id (client_sock):
	for client_id in users:
		if users[client_id]['socket'] == client_sock:
			return client_id
		else:
			print('Cliente não encontrado')
			return None

# Função para encriptar valores a enviar em formato json com codificação base64
# return int data encrypted in a 16 bytes binary string and coded base64
def encrypt_intvalue (client_id, data):
	data = data.encode ('utf-8')
	cipher = AES.new (users[client_id]['cipher'], AES.MODE_ECB)
	data = cipher.encrypt (data)
	data = base64.b64encode (data)
	json.dumps(data)
	return data


# Função para desencriptar valores recebidos em formato json com codificação base64
# return int data decrypted from a 16 bytes binary string and coded base64
def decrypt_intvalue (client_id, data):
	data = base64.b64decode (data)
	cipher = AES.new (users[client_id]['cipher'], AES.MODE_ECB)
	data = cipher.decrypt (data)
	data = data.decode ('utf-8')
	return data


# Incomming message structure:
# { op = 'START', client_id, [cipher] }
# { op = 'QUIT' }
# { op = 'NUMBER', number }
# { op = 'STOP' }
#
# Outcomming message structure:
# { op = 'START', status }
# { op = 'QUIT' , status }
# { op = 'NUMBER', status }
# { op = 'STOP', status, min, max }


#
# Suporte de descodificação da operação pretendida pelo cliente
#
def new_msg (client_sock):
	client_id = find_client_id (client_sock)
	data = recv_dict(client_id)
	op = data['op']
	if op == 'START':
		new_client (client_sock, data)
	elif op == 'QUIT':
		quit_client (client_sock, data)
	elif op == 'NUMBER':
		number_client (client_sock, data)
	elif op == 'STOP':
		stop_client (client_sock, data)
	else:
		print ("Operação não definida")
		return None
	

# read the client request
# detect the operation requested by the client
# execute the operation and obtain the response (consider also operations not available)
# send the response to the client


#
# Suporte da criação de um novo jogador - operação START
#
def new_client (client_sock, request):
	client_id = request['client_id']
	if client_id in users:
		print ("Cliente já existe")
		send_dict (client_id, {'op': 'START', 'status': 'False'})
		return None
	else:
		[client_id] = {'socket': client_sock, 'cipher': request['cipher']}
		send_dict (client_id, {'op': 'START', 'status': 'True'})


# detect the client in the request
# verify the appropriate conditions for executing this operation
# process the client in the dictionary
# return response message with or without error message


#
# Suporte da eliminação de um cliente
#
def clean_client (client_sock):
	client_id = find_client_id (client_sock)
	if client_id in users:
		users.pop (client_id)
		return None
	else:
		print ("Cliente não encontrado")
		return None
# obtain the client_id from his socket and delete from the dictionary


#
# Suporte do pedido de desistência de um cliente - operação QUIT
#
def quit_client (client_sock):
	client_id = find_client_id (client_sock)
	if client_id in users:
		send_dict (client_id, {'op': 'QUIT', 'status': 'True'})
		clean_client (client_sock)
		update_file (client_id, 'quit')
		print("Cliente desconectado")
	else:
		send_dict (client_id, {'op': 'QUIT', 'status': 'False'})
		print ("Cliente não encontrado")
		return None
# obtain the client_id from his socket
# verify the appropriate conditions for executing this operation
# process the report file with the QUIT result
# eliminate client from dictionary
# return response message with or without error message


#
# Suporte da criação de um ficheiro csv com o respectivo cabeçalho
#
def create_file ():
	open ('report.csv', 'w').close()
	with open ('report.csv', 'a') as csvfile:
		csv_writer = csv.writer (csvfile, delimiter = ',')
		csv_writer.writerow (['client_id', 'result'])
	return None
# create report csv file with header


#
# Suporte da actualização de um ficheiro csv com a informação do cliente e resultado
#
def update_file (client_id, result):
	with open ('report.csv', 'a') as csvfile:
		csv_writer = csv.writer (csvfile, delimiter = ',')
		csv_writer.writerow ([client_id, result])
	return None
# update report csv file with the result from the client


#
# Suporte do processamento do número de um cliente - operação NUMBER
#
def number_client (client_sock, request):
	client_id= find_client_id (client_sock)
	if client_id in users:
		send_dict (client_id, {'op': 'NUMBER', 'status': 'True'})
		update_file (client_id, request['number'])
		print("Número enviado")
	else:
		send_dict (client_id, {'op': 'NUMBER', 'status': 'False'})
		print ("Cliente não encontrado")
		return None
# obtain the client_id from his socket
# verify the appropriate conditions for executing this operation
# return response message with or without error message


#
# Suporte do pedido de terminação de um cliente - operação STOP
#
def stop_client (client_sock, request):
	client_id = find_client_id (client_sock)
	if client_id in users:
		send_dict (client_id, {'op': 'STOP', 'status': 'True', 'min': min(request['numbers']), 'max': max(request['numbers'])})
		update_file(client_id, users[client_id]['numbers'])
		clean_client (client_sock)
	else: 
		print ("Cliente não encontrado")
		return None
# obtain the client_id from his socket
# verify the appropriate conditions for executing this operation
# process the report file with the result
# eliminate client from dictionary
# return response message with result or error message


def main():
	# validate the number of arguments and eventually print error message and exit with error
	# verify type of of arguments and eventually print error message and exit with error
	port = int(sys.argv[1])
	
	server_socket = socket.socket (socket.AF_INET, socket.SOCK_STREAM)
	server_socket.bind (('127.0.0.1', port))
	server_socket.listen (10)

	clients = []
	create_file ()

	while 'True':
		try:
			available = select.select ([server_socket] + clients, [], [])[0]
		except ValueError:
			# Sockets may have been closed, check for that
			for client_sock in clients:
				if client_sock.fileno() == -1 : client_sock.remove(client_sock) # closed
			continue # Reiterate select

		for client_sock in available:
			# New client?
			if client_sock is server_socket:
				newclient, addr = server_socket.accept ()
				clients.append (newclient)
			# Or an existing client
			else:
				# See if client sent a message
				if len (client_sock.recv (1, socket.MSG_PEEK)) != 0:
					# client socket has a message
					#print ('server' + str (client_sock))
					new_msg (client_sock)
				else: # Or just disconnected
					clients.remove (client_sock)
					clean_client (client_sock)
					client_sock.close ()
					break # Reiterate select

if len (sys.argv) == 2 and sys.argv[1].isdigit() and __name__ == '__main__':
		main()
		
else:
	if len(sys.argv) != 2 :
		print("Numero de argumentos incorreto. \n Usage: python3 server.py porto")
	elif sys.argv[1].isdigit() == False:
		print("Porta invalida. (Nao e um digito)")
	elif sys.argv[1] < 0:
		print("Porta invalida. (Porta nao pode ser negativa)")
	sys.exit (1)

