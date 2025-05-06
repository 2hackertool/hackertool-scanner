black = "\033[30m"
red = "\033[31m"
green = "\033[32m" 
yellow = "\033[33m" 
blue = "\033[34m" 
magenta = "\033[35m" 
cyan = "\033[36m" 
white = "\033[37m" 
orange = "\033[38;5;208m"
moonlit = "\033[38;2;116;92;151m"
electric = "\033[38;2;0;255;209m"
reset = "\033[0m"
system("clear")
puts orange + '''

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
''' + orange
puts
puts moonlit + "tool by hackertool" + moonlit
puts
puts electric + "{01} ruby port scan" + electric
puts electric + "{02} python port scanner" + electric
puts electric + "{03} ruby port scanner " + electric
puts electric + "{04} ruby port scanner from 20 to 6000" + electric
puts electric + "{05} simple python port scanner from 1 to 9000" + electric
puts
print blue + "choice : " + blue
choice = gets.chomp
puts
if choice == "1" || choice == "01"
   system("ruby port-scan.rb")
elsif choice == "2" || choice == "02"
   system("python3 port-scanner.py")
elsif choice == "3" || choice == "03"
   system("ruby port-scanner.rb")
elsif choice == "4" || choice == "04"
   system("ruby port-scanner-to-20-6000.rb")
elsif choice == "5" || choice == "05"
   system("python3 simple-scanner-1-9000.py")
else puts red + "error try again" + red
end

