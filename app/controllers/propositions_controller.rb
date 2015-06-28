class PropositionsController < ApplicationController
  def new
    puts "PROPOSTIONS NEW"
    puts params
    redirect_to "http://google.com"
  end
end