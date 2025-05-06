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
$neon = "\033[38;2;255;46;198m" 
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
puts $neon + "tool by hackertool" + $neon
puts
# Function to check if a port is open
def scan_port(ip, port) 
  begin
  # Try to open a connection to the port
    Timeout.timeout(0.5) do # if there is any problem or the code can not check if the port open change it to 0.6 or 0.7
      socket = TCPSocket.new(ip, port) #connection to ip and port to check if was closed or open
      puts $green + "port #{port} is opened" + $green #print port is open with port name in green color 
      socket.close
    end
  rescue Timeout::Error, Errno::ECONNREFUSED # that's have failed to connection with the ip and port
    puts $red + "port #{port} is closed" + $red
  rescue Errno::EHOSTUNREACH
    # if the host is unreachable
    puts "Host #{ip} is unreachable"
  rescue => e
    # Catch other errors
    puts "Error scanning port #{port}: #{e.message}"
  end
end

def scan_ports(ip, start_port, end_port)
  (start_port..end_port).each do |port|
    scan_port(ip, port)
  end
end

print $blue + "type the ip or web url to scan it : " + $blue
target_ip = gets.chomp
start_port = "20"
end_port = "6000"

puts $orange + "scanning #{target_ip} from port #{start_port} to #{end_port}..." + $orange
puts $magenta + "note if the code can't check if port open change timeout from 0.5 to 0.6 or 0.7" + $magenta
scan_ports(target_ip, start_port, end_port)
