
require 'sinatra/base'
require 'bundler'
require 'json'

Bundler.require


require_relative 'server'

# Dir['modules/**/*.rb'].each do |file|
#   require_relative file
# end

# Security settings
use Rack::Protection
use Rack::Protection::StrictTransport
use Rack::Protection::EscapedParams
use Rack::Protection::XSSHeader # For those still using Internet Explorer..
use Rack::Protection::RemoteReferrer
use Rack::Protection::FormToken
use Rack::Protection::AuthenticityToken

port = if ENV['RACK_ENV'] == 'production'
         ENV['PORT']
       else
         9298
       end

Rack::Server.start(
  Port: port,
  Host: '0.0.0.0',
  app: Site,
  SSLEnable: false
)    
