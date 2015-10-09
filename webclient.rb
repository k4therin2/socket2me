require 'net/http'
require 'resolv-replace.rb'
require_relative 'configs.rb'

http = Net::HTTP.new(@host)
print http.get(@path)
headers, body = http.get(@path)
if headers.code == "200"
  print body
else
  puts "#{headers.code} #{headers.message}"
end
