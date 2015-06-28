class TreesController < ApplicationController
  def show
    @tree = Tree.find_by(id: params[:id])
    @donors = @tree.sort_donors_chron
    @charity = @tree.charity
  end
end
