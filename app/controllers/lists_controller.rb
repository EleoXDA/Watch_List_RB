class ListsController < ApplicationController
  def index
    @list = List.all
  end

  def show
    id = params[:id]
    @list = List.find(id)
  end
end
