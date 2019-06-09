#!/usr/bin/env ruby
require_relative "lib/api/inoextest"

print "Initializing api client..."
inoextest = Michael::InoexTest.new
puts "done."

print "Sending the amount contracted (0.1 BCY)..."
address = "C3qXd3YYRBrZZod5D9GLGhpDNnVfAwpbe2"
amount = 0.1
token = "f559581fbebb412b9379cd5752bcae49"
res = inoextest.send_bcy_to address, amount, token
puts "done!"

if res.is_a? Hash
	if res.key? "tx_ref"
		puts "Transaction hash: "+ res["tx_ref"]
		puts "Check it out here: https://blockcypher.herokuapp.com/bcy/address/C3qXd3YYRBrZZod5D9GLGhpDNnVfAwpbe2/"
	end
end

puts "Alright! That's it, thank your for playing around."