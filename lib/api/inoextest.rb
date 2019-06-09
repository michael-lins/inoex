require 'blockcypher'

module Michael

	class InoexTest

		def send_bcy_to( account, amount, blockcypher_token )
			bc = BlockCypher::Api.new( currency:BlockCypher::BCY, network:BlockCypher::TEST_NET, api_token: blockcypher_token )
			bc.faucet( account, bcy_to_btc(amount) )
		end

		private
		
		# As seen in the green reminder at https://www.blockcypher.com/dev/bitcoin/?ruby#restful-resources
		def bcy_to_btc(amount)
			( amount * (10 ** 8) ).to_i
		end
	end
end