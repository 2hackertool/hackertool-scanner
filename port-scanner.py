import socket
import os
black = "\033[30m" 
red = "\033[31m"
green = "\033[32m" 
yellow = "\033[33m" 
blue = "\033[34m" 
magenta = "\033[35m" 
cyan = "\033[36m" 
white = "\033[37m" 
orange = "\033[38;5;208m"
cosmic = "\033[38;2;255;102;102m" 
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
print(cosmic + "tool by hackertool" + cosmic)
print()
def scan_port(ip, port):
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    sock.settimeout(0.2) # if there is any problem or the code can not check if the port open change it to 0.5 or 0.4 or 0.3 or 1
    result = sock.connect_ex((ip, port)) # if that's have failed to connection with the ip and port 
    if result == 0: # if the reslut 0 will be opend port 
        print(f"{green}Port {port} is opened{green}")
    else:
        print(f"{red}Port {port} is closed{red}")
    sock.close()

def scan_ports(ip, start_port, end_port):
    for port in range(start_port, end_port + 1):
        scan_port(ip, port)

if __name__ == "__main__":
    target = input(f"{green}type the ip or webstie : {green}")
    start_port = int(input("type the starting port : "))
    end_port = int(input("type the ending port : "))
    print(f"{orange} scanning {target} from port {start_port} to {end_port}...{orange}")
    print(f"{magenta} note if the code can't check if the target is open change  it to 0.5 or 0.3 or 0.4 or 1 {magenta}")
    scan_ports(target, start_port, end_port)
