class GivegoodController < ApplicationController
  def index
    # client = Twitter::REST::Client.new do |config|
    #   config.consumer_key        = "mRYfLnKQMdk5Lqtnas1dicOgT"
    #   config.consumer_secret     = "sDKR8xO5CLOidvZZYi2FLyYc7HPd8od55SZIl4VZQYknjJmnuo"
    #   config.access_token        = "2975423759-hvI7NN8X3Rn4QSw9zOn6MV1GW8rn2zlLwAdnSONEinBjn1Mkw3Au33hCUiZ8otwlryAjmqSFH"
    # end

    # client.update("I'm tweeting with @gem!")



    # Exchange your oauth_token and oauth_token_secret for an AccessToken instance.
  def prepare_access_token(oauth_token, oauth_token_secret)
      consumer = OAuth::Consumer.new("APIKey", "APISecret", { :site => "https://api.twitter.com", :scheme => :header })

      # now create the access token object from passed values
      token_hash = { :oauth_token => oauth_token, :oauth_token_secret => oauth_token_secret }
      access_token = OAuth::AccessToken.from_hash(consumer, token_hash )

      return access_token
  end

# Exchange our oauth_token and oauth_token secret for the AccessToken instance.
access_token = prepare_access_token("abcdefg", "hijklmnop")

# use the access token as an agent to get the home timeline
response = access_token.request(:get, "https://api.twitter.com/1.1/statuses/home_timeline.json")
  end
end