require_relative '../../spec_helper'

describe Michael::InoexTest do

	it "must implement method send_bcy_to" do
		Michael::InoexTest.respond_to? "send_bcy_to"
	end

	it "must implement method converter method bcy_to_btc" do
		Michael::InoexTest.respond_to? "bcy_to_btc"
	end

	describe "send bcy over BlockCypher API" do

		before do
			VCR.insert_cassette 'tx_ref', :record => :new_episodes
		end

		after do
			VCR.eject_cassette
		end

		it "must send 0.1 BCY to C3qXd3YYRBrZZod5D9GLGhpDNnVfAwpbe2 address using BlockCypher's API faucet" do
			api = Michael::InoexTest.new
			
			address = "C3qXd3YYRBrZZod5D9GLGhpDNnVfAwpbe2"
			amount_in_bcy = 0.1
			blockcypher_token = "f559581fbebb412b9379cd5752bcae49"

			res = api.send_bcy_to address, amount_in_bcy, blockcypher_token

			res["tx_ref"].wont_be :empty?

		end

	end
end