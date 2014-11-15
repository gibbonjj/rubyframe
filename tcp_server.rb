require 'socket'

server = TCPServer.open('localhost', 2000)
loop do
  connection = server.accept
  puts "Opening a connection upon request."
  connection.puts("It is now #{Time.new.ctime}")
  connection.puts "Bye"
  connection.close
  puts "Closing connection."
end
