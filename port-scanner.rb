require 'socket' #require socket
require 'timeout' #require timeout
#type colors ANSCI escape code
$black = "\033[30m" 
$red = "\033[31m"
$green = "\033[32m" 
$yellow = "\033[33m" 
$blue = "\033[34m" 
$magenta = "\033[35m" 
$cyan = "\033[36m" 
$white = "\033[37m" 
$orange = "\033[38;5;208m" 
$arctic = "\033[38;2;135;206;250m"
$reset = "\033[0m"
system("clear") #clear
#orange banner
puts $orange + '''

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
''' + $orange
puts $arctic + "tool by hackertool " + $arctic
puts
def scan_port(ip, port) #def using
  begin
    Timeout.timeout(0.4) do #timeout of scan
      socket = TCPSocket.new(ip, port) # connection to ip and port to check if was closed or open
      puts $green + "port #{port} is opened" + $green #print port is open with port name in green color
      socket.close # close 
    end 
  rescue Timeout::Error, Errno::ECONNREFUSED # that's have failed to connection with the ip and port 
    puts $red + "port #{port} is closed" + $red # print port is closed with port name in red color
  rescue Errno::EHOSTUNREACH 
    # If the host is unreachable
    puts $orange + "the host #{ip} you type it is unreachable" + $orange
  rescue => e
    # Catch other errors
    puts $red + "error scanning port #{port}: #{e.message}" + $red
  end
end

def scan_ports(ip, start_port, end_port)
  (start_port..end_port).each do |port|
    scan_port(ip, port)
  end
end

print $blue + "type the ip or website name : " + $blue
target_ip = gets.chomp
print $blue + "type the starting port : " + $blue
start_port = gets.chomp.to_i
print $blue + "type the ending port : " + $blue
end_port = gets.chomp.to_i

puts $orange + "scanning #{target_ip} from port #{start_port} to #{end_port}..." + $orange
scan_ports(target_ip, start_port, end_port) # scan to example 1 to 9000
