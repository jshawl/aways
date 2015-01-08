class UsersController < ApplicationController
  def index
  end
  def auth
    auth = request.env["omniauth.auth"]
    puts 
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['consumer_key']
      config.consumer_secret     = ENV['consumer_secret']
      config.access_token        = auth['credentials']['token']
      config.access_token_secret = auth['credentials']['secret'] 
    end 
    @followers = client.followers
   end
end