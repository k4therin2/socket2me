require 'socket'

hostname = 'ec2-52-4-246-92.compute-1.amazonaws.com'
port = 2000

sock = TCPSocket.open(hostname, port)
puts "about to enter loop"
while line = sock.gets
  puts 'in loop'
  outs line.chop
end

sock.close
