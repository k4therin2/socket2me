require 'socket'

hostname = 'localhost'
port = 2000

sock = TCPSocket.open(hostname, port)


while line = sock.gets
  puts line.chop
end

s.close
