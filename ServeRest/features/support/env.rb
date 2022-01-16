require 'cucumber'
require 'pry'
require 'httparty'
require 'rspec'
require 'json'

HTTParty::Basement.default_options.update(verify: false)

$base_url = 'https://serverest.dev'

