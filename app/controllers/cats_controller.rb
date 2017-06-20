class CatsController < ApplicationController

  before_action :chatrooms_url
  before_action :set_cat
  before_action :authenticate_user!

  def create
    @cat = Cat.create(cat_params)

    if @cat.save
      redirect_to cat_path(@cat)
    else
      flash[:error] = @cat.errors.full_messages.join(", ")
      redirect_to chatrooms_path
    end
  end

  def show
    @cat = Cat.find_by_id(params[:id])
  end

  def edit
    @chatrooms = Chatroom.all
  end

  def new
    show
    @cat = Cat.new
  end

  def update
    @chatroom = Chatroom.all
    if @cat.update(cat_params)
      redirect_to cat_path(@cat)
    else
      flash[:error] = @chatroom.errors.full_messages.join(", ")
      render 'edit'
    end
  end

  def destroy
    @cat.destroy
    redirect_to root_path
  end


  private

  def cat_params
    params.require(:cat).permit(:name, :breed, :age, :cavatar, :user_id)
  end

  def set_cat
    @cat = Cat.find_by_id(params[:id])
  end


end # closes CatsController
