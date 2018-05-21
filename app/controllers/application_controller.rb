class ApplicationController < ActionController::Base
  require 'net/http'
  require 'json'

  include PostsHelper
  before_action :authenticate_user!

  def sunrise_api
    uri = URI("https://api.sunrise-sunset.org/json?lat=36.7201600&lng=-4.4203400&date=today")
    @api_data = Net::HTTP.get(uri)
    @api_data
  end
end
