require 'socket'

connection = TCPSocket.open('www.google.com', 80)

connection.puts "GET /index.html HTTP/1.1\r\n"
connection.puts "Accept: text/html"
connection.puts "Accept-Charset: UTF-8"
connection.puts "User-Agent: My Http Client"
connection.puts "\r\n"

while line = connection.gets
  puts line
end

connection.close
