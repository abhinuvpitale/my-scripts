#!/bin/bash

IP=$(hostname -I|cut -d ' ' -f1)
sudo nmap -sP $IP/24
