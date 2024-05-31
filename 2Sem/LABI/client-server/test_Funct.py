# encoding=utf-8

from cgitb import reset
from re import M
import os
import sys
import socket
import select
import json
import base64
import csv
import random
from unittest import result
from common_comm import send_dict, recv_dict, sendrecv_dict
from subprocess import Popen, PIPE


def test_server ():
    proc = Popen("python3 server.py", stdout=PIPE, shell=True)
    assert proc.wait() == 1
    assert proc.stdout.read ().decode('utf-8') == ("Numero de argumentos incorreto. \n Usage: python3 server.py porto\n")

def test_server1 ():
    proc = Popen("python3 server.py -1", stdout=PIPE, shell=True)
    assert proc.wait() == 1
    assert proc.stdout.read ().decode ('utf-8') == ("Porta invalida. (Nao e um digito)\n")

def test_server2 ():
    proc = Popen ("python3 server.py luis", stdout=PIPE, shell=True)
    assert proc.wait() == 1
    assert proc.stdout.read ().decode ('utf-8') == ("Porta invalida. (Nao e um digito)\n")


def test_stop_client():
    client_sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    client_sock.connect(('localhost', 1234))
    request = {"op" : "START","client_id": "benfica","cipher": None}
    new_client(client_sock,request)
    request = {"op": "STOP"}
    stop_client(client_sock,request)
    assert client_sock not in users
    print("Cliente não encontrado")