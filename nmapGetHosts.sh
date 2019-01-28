#!/bin/bash

IP=$(hostname -I|cut -d ' ' -f1)
sudo nmap -sn $IP/24
