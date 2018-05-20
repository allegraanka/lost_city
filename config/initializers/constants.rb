def sunrise_api
  uri = URI(https://api.sunrise-sunset.org/json)
  Net::HTTP.get(uri)
end
