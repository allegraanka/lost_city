class ApplicationController < ActionController::Base
  require 'net/http'
  require 'json'

  include PostsHelper
  before_action :authenticate_user!

  def sunrise_api
    uri = URI("https://api.sunrise-sunset.org/json?lat=39.952583&lng=-75.165222&date=today")
    @api_data = Net::HTTP.get(uri)
    @api_data
  end
end
