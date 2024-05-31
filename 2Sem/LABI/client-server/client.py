#!/usr/bin/python3

import os
import sys
import socket
import json
import base64
from common_comm import send_dict, recv_dict, sendrecv_dict
from Crypto.Cipher import AES


# Função para encriptar valores a enviar em formato jsons com codificação base64
# return int data encrypted in a 16 bytes binary string coded in base64
def encrypt_intvalue (cipherkey, data):
	data = data.encode ('utf-8')
	cipher = AES.new (cipherkey, AES.MODE_ECB)
	data = cipher.encrypt (data)
	data = base64.b64encode (data)
	json.dumps(data)
	return data
	


# Função para desencriptar valores recebidos em formato json com codificação base64
# return int data decrypted from a 16 bytes binary strings coded in base64
def decrypt_intvalue (cipherkey, data):
	data = base64.b64decode (data)
	cipher = AES.new (cipherkey, AES.MODE_ECB)
	data = cipher.decrypt (data)
	data = data.decode ('utf-8')
	json.dumps(data)
	return data


# verify if response from server is valid or is an error message and act accordingly
def validate_response (client_sock, response):
	if response['status'] == 'True':
		return True
	elif response['status'] == 'False':
		print ("Error: " + response['message'])
		quit_action (client_sock)
	else:
		print ("Resposta não definida: " + response['status'])
		return None



# process QUIT operation
def quit_action (client_sock):
	send_dict (client_sock, {'op': 'QUIT'})
	response = recv_dict (sys.argv[1])
	if validate_response (client_sock, response):
		print ("Client " + sys.argv[1] + " has quit")
		sys.exit (0)
	else:
		print("Ocorreu um error ao sair do cliente.")
		sys.exit (1)

# Outcomming message structure:
# { op = "START", client_id, [cipher] }
# { op = "QUIT" }
# { op = "NUMBER", number }
# { op = "STOP" }
#
# Incomming message structure:
# { op = "START", status }
# { op = "QUIT" , status }
# { op = "NUMBER", status }
# { op = "STOP", status, min, max }


#
# Suporte da execução do cliente
#


def run_client (client_sock, client_id):
	send_dict (client_sock, {'op': 'START', 'client_id': client_id})
	response = recv_dict (client_id)
	if validate_response (client_sock, response):
		print ("O cliente " + client_id + " foi iniciado com sucesso.")
		run_client_loop (client_sock, client_id)
	else:
		quit_action (client_sock, 0)

def run_client_loop (client_sock, client_id):
	while True:
		message = recv_dict (client_id)
		if message['op'] == 'NUMBER':
			print (message['number'])
			send_dict (client_sock, {'op': 'NUMBER'})
		elif message['op'] == 'STOP':
			print (message['message'])
			send_dict (client_sock, {'op': 'STOP'})
			quit_action (client_sock, 0)
		elif message['op'] == 'QUIT':
			print (message['message'])
			quit_action (client_sock, 0)
		else:
			print("Unknown operation: " + message['op'])
			quit_action (client_sock, 0)
			
def main():
	# validate the number of arguments and eventually print error message and exit with error
	# verify type of of arguments and eventually print error message and exit with error
	port = int(sys.argv[2])
	hostname = sys.argv[1]

	client_sock = socket.socket (socket.AF_INET, socket.SOCK_STREAM)
	client_sock.connect ((hostname, port))
	run_client (client_sock, sys.argv[1])
	client_sock.close()
if len (sys.argv) == 3 and sys.argv[2].isdigit() and __name__ == "__main__":
		main()
else:
	if len(sys.argv) != 3 :
		print("Número de argumentos incorreto.")
	elif sys.argv[2].isdigit() == False:
		print("Porta inválida. (Não é um dígito)")
	elif sys.argv[2]<0:
		print("Porta inváida. (Porta não pode ser negativa)")
	print("Usage: python3 client.py <client_id> <porto> <máquina>")	
	sys.exit (1)