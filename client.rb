require 'socket'
require_relative 'configs.rb'

sock = TCPSocket.open(@hostname, @port)

while line = sock.gets
  puts line.chop
end

sock.close
