class ItemsController < ApplicationController
  before_action :set_todo
  before_action :set_todo_item, only: [:show, :update, :destroy]

  # GET
  def index
    json_response(@todo.item)
  end

  # GET
  def show
    json_response(@item)
  end

  # POST
  def create
    @todo.items.create!(item_params)
    json_response(@todo, :created)
  end

  # PUT
  def update
    @item.update(item_params)
    head :no_content
  end

  # DELETE
  def destroy
    @item.destroy
    head :no_content
  end

  private

  def item_params
    params.permit(:name, :done)
  end

  def set_todo
    @todo = Todo.find(params[:todo_id])
  end

  def set_todo_item
    @item = @todo.items.find_by!(id: params[:id]) if @todo
  end
end
