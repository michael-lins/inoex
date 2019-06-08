require_relative '../lib/api'

require 'minitest/autorun'
require 'webmock/minitest'
require 'vcr'
require 'turn'

Turn.config do |c|
	c.format  = :outline
	c.trace   = true
	c.natural = true
end

VCR.configure do |c|
	c.cassette_library_dir = 'spec/fixtures/api_cassettes'
	c.hook_into :webmock
end
