class TreesController < ApplicationController
  def show
    @tree = Tree.find_by(id: params[:id])
    @donors = @tree.sort_donors_chron
    @charity = @tree.charity
  end

  def new
    @tree = Tree.find_by(id: 1)
    @donors = @tree.sort_donors_chron
    @charity = @tree.charity
  end
end
