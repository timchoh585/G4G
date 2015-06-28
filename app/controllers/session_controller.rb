class SessionController < ApplicationController
  def login

  end

  def callback
    session["oauth_token"] = params[:oauth_token]
    session["oauth_verifier"] = params[:oauth_verifier]

    # puts "SESSION"
    # puts session["oauth_token"]
    # puts session["oauth_verifier"]
    redirect_to "/givegood"
  end
end