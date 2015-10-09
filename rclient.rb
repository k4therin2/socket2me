require 'socket'

hostname = 'ec2-52-4-246-92.compute-1.amazonaws.com'
port = 5251 

sock = TCPSocket.open(hostname, port)
while line = sock.gets
  puts line.chop
end

sock.close
