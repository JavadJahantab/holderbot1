#!/bin/bash
HOME=/
pkill -f monitoring2.py 
pkill -f holder2.py 
pkill -f expired2.py 
pkill -f limiteder2.py 
cd
cd /holderbot2
source hold/bin/activate
chmod +x monitoring2.py
chmod +x holder2.py
chmod +x expired2.py
chmod +x limiteder2.py
nohup python3 monitoring2.py & disown
nohup python3 holder2.py & disown
nohup python3 expired2.py & disown
nohup python3 limiteder2.py & disown
