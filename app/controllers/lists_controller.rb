class ListsController < ApplicationController
  def index
    @list = List.all
  end

  def show
    id = params[:id]
    @list = List.find(id)
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end
end
