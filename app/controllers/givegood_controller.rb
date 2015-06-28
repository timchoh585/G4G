class GivegoodController < ApplicationController
  def index
    require 'twitter'
    require 'net/http'
    require 'json'

twitter2 = Twitter::REST::Client.new do |config|
  config.consumer_key        = "mRYfLnKQMdk5Lqtnas1dicOgT"
  config.consumer_secret     = "sDKR8xO5CLOidvZZYi2FLyYc7HPd8od55SZIl4VZQYknjJmnuo"
  config.access_token        = "2975423759-hvI7NN8X3Rn4QSw9zOn6MV1GW8rnxiSNQdmwhSG"
  config.access_token_secret = "2zlLwAdnSONEinBjn1Mkw3Au33hCUiZ8otwlryAjmqSFH"
end

    puts "TWITTER"
    # puts twitter2.respond_to?("update")
    puts twitter2.public_methods

    # puts $twitter.friends

    # client.update("Hello world!")

    # @twitter = Twitter::Client.new
    twitter2.update("word")
  end
end