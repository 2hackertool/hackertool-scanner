import socket
import os
from IPy import IP
black = "\033[30m" 
red = "\033[31m"
green = "\033[32m" 
yellow = "\033[33m" 
blue = "\033[34m" 
magenta = "\033[35m" 
cyan = "\033[36m" 
white = "\033[37m" 
orange = "\033[38;5;208m" 
solar = "\033[38;2;168;230;161m" 
reset = "\033[0m"
os.system("clear")
print(orange + '''

 ██░ ██  ▄▄▄       ▄████▄   ██ ▄█▀▓█████  ██▀███  ▄▄▄█████▓ ▒█████   ▒█████   ██▓    
▓██░ ██▒▒████▄    ▒██▀ ▀█   ██▄█▒ ▓█   ▀ ▓██ ▒ ██▒▓  ██▒ ▓▒▒██▒  ██▒▒██▒  ██▒▓██▒    
▒██▀▀██░▒██  ▀█▄  ▒▓█    ▄ ▓███▄░ ▒███   ▓██ ░▄█ ▒▒ ▓██░ ▒░▒██░  ██▒▒██░  ██▒▒██░    
░▓█ ░██ ░██▄▄▄▄██ ▒▓▓▄ ▄██▒▓██ █▄ ▒▓█  ▄ ▒██▀▀█▄  ░ ▓██▓ ░ ▒██   ██░▒██   ██░▒██░    
░▓█▒░██▓ ▓█   ▓██▒▒ ▓███▀ ░▒██▒ █▄░▒████▒░██▓ ▒██▒  ▒██▒ ░ ░ ████▓▒░░ ████▓▒░░██████▒
 ▒ ░░▒░▒ ▒▒   ▓▒█░░ ░▒ ▒  ░▒ ▒▒ ▓▒░░ ▒░ ░░ ▒▓ ░▒▓░  ▒ ░░   ░ ▒░▒░▒░ ░ ▒░▒░▒░ ░ ▒░▓  ░
 ▒ ░▒░ ░  ▒   ▒▒ ░  ░  ▒   ░ ░▒ ▒░ ░ ░  ░  ░▒ ░ ▒░    ░      ░ ▒ ▒░   ░ ▒ ▒░ ░ ░ ▒  ░
 ░  ░░ ░  ░   ▒   ░        ░ ░░ ░    ░     ░░   ░   ░      ░ ░ ░ ▒  ░ ░ ░ ▒    ░ ░   
 ░  ░  ░      ░  ░░ ░      ░  ░      ░  ░   ░                  ░ ░      ░ ░      ░  ░
                  ░                                                                  
  ██████  ▄████▄   ▄▄▄       ███▄    █  ███▄    █ ▓█████  ██▀███                     
▒██    ▒ ▒██▀ ▀█  ▒████▄     ██ ▀█   █  ██ ▀█   █ ▓█   ▀ ▓██ ▒ ██▒                   
░ ▓██▄   ▒▓█    ▄ ▒██  ▀█▄  ▓██  ▀█ ██▒▓██  ▀█ ██▒▒███   ▓██ ░▄█ ▒                   
  ▒   ██▒▒▓▓▄ ▄██▒░██▄▄▄▄██ ▓██▒  ▐▌██▒▓██▒  ▐▌██▒▒▓█  ▄ ▒██▀▀█▄                     
▒██████▒▒▒ ▓███▀ ░ ▓█   ▓██▒▒██░   ▓██░▒██░   ▓██░░▒████▒░██▓ ▒██▒                   
▒ ▒▓▒ ▒ ░░ ░▒ ▒  ░ ▒▒   ▓▒█░░ ▒░   ▒ ▒ ░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒▓ ░▒▓░                   
░ ░▒  ░ ░  ░  ▒     ▒   ▒▒ ░░ ░░   ░ ▒░░ ░░   ░ ▒░ ░ ░  ░  ░▒ ░ ▒░                   
░  ░  ░  ░          ░   ▒      ░   ░ ░    ░   ░ ░    ░     ░░   ░                    
      ░  ░ ░            ░  ░         ░          ░    ░  ░   ░                        
         ░                                                                           
''' + orange)
print(solar + "tool by hackertool" + solar)
print()
def scan_port(ip, port):
    try:
        sock = socket.socket()
        sock.settimeout(0.2) # if there is any problem or the code can not check if the port open change it to 0.5 or 0.4 or 0.3 or 1
        sock.connect((ip, port)) # if that's have failed to connection with the ip and port 
        print(green + "[+] port " + str(port) +" "+  "is opened" + green)
    except:
        print(red + "[-] port " + str(port) + " is closed" + red)

ip = input(magenta + "type the ip or webstie : " + magenta)
print(f"{orange}scanning {ip} from port 1 to 9000.{orange}")
print(f"{green}note if the code can't check if the target is open change  it to 0.5 or 0.3 or 0.4 or 1{green}")
for port in range(1, 9000):  #scan from 1 to 9000 using for loops
    scan_port(ip, port)
