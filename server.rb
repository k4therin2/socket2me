require 'socket'

server = TCPServer.open(2000)
loop{
  client = server.accept #wait for a client to connect
  client.puts(Time.now.ctime) #send the time to client
  client.puts "Closing the connection. Later losers" #say goodbye
  client.close  #disconnect from client
}
