require 'socket'

hostname = 'localhost'
port = 5251 

sock = TCPSocket.open(hostname, port)


while line = sock.gets
  puts line.chop
end

sock.close
