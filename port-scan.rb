require 'socket'
require 'timeout'
$black = "\033[30m" 
$red = "\033[31m"
$green = "\033[32m" 
$yellow = "\033[33m" 
$blue = "\033[34m" 
$magenta = "\033[35m" 
$cyan = "\033[36m" 
$white = "\033[37m" 
$orange = "\033[38;5;208m"
$electric = "\033[38;2;0;255;209m"
$reset = "\033[0m"
system("clear") 
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
puts $electric + "tool by hackertool" + $electric
puts
# Function to check if a port is open
def scan_port(ip, port)
  begin
    # Try to open a connection to the port
    Timeout.timeout(0.3) do # if there is any problem or the code can not check if the port open change it to 0.5 or 0.4 
      socket = TCPSocket.new(ip, port) #connection to ip and port to check if was close or open
      puts $green + "port #{port} is opened" + $green #print port is open with port name in green color 
      socket.close #close 
    end
  rescue Errno::ECONNREFUSED, Errno::EHOSTUNREACH, Timeout::Error # if that's have failed to connection with the ip and port 
    # Do nothing if the port is closed or unreachable
    puts $red + "port #{port}  is closed" + $red
  end
end

# Function to scan a range of ports
def scan_ports(ip, start_port, end_port)
  (start_port..end_port).each do |port|
    scan_port(ip, port)
  end
end

# Main script
print $magenta + "type ip or web url : " + $magenta
target = gets.chomp

print $magenta + "type start port : " + $magenta
start_port = gets.chomp.to_i

print $magenta + "type end port : " + $magenta
end_port = gets.chomp.to_i

puts $orange + "scanning #{target} from port #{start_port} to #{end_port}" + $orange
puts $yellow + "note if the code can't check if port open change timeout from 0.3 to 0.5 or 0.4" + $yellow
start_time = Time.now

scan_ports(target, start_port, end_port)

puts $blue + "scan done in #{Time.now - start_time} seconds" + $blue
