#!/bin/bash

grep -ir this_func .
./wsmancmd.py -U http://10.0.2.195:5985/wsman -u username -p pass 'powershell -Command ipconfig'
