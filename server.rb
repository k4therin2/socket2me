require 'socket'
require_relative 'configs.rb'

server = TCPServer.open(@port)
loop{
  client = server.accept #wait for a client to connect
  puts 'Someone is here!'
  client.puts("I was sleeping, this better be important") #send message to client
  puts 'Sent response.'
  client.puts("Closing the connection. Later losers") #say goodbye
  client.close  #disconnect from client
  puts 'Connection closed.'
}
