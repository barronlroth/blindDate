class HomeController < ApplicationController
  before_action :set_auth

  def index
  end

  def profile
  end

  # searches for venues in boston that are 'romantic'
  def self.find_restaurant
  	venues = client.search_venues(:ll => '42.347618,-71.100288', :query => 'romantic', limit: '1')
  	#.groups.first.items.sample

  	#json @venue["groups"].first["items"]

  	@place = venues.to_hash["venues"][0]["name"]

    puts "dogs"
  	

  end


  def self.client
  	client ||= Foursquare2::Client.new(:client_id => 'TC2AD3NWZJBKXMTWAUI2WV4Q3NXAE3DWKPTLP3AIS42ZWXYC', 
  	:client_secret => 'MZY1BIXYLSW4C1F5I4L2E2FJFB4XFWS2KJLLB53NTSVE4INP',
  	api_version: '20161205')
  end
  	
  def set_auth
    @auth = session[:omniauth] if session[:omniauth]
end

  

end
