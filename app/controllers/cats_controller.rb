class CatsController < ApplicationController
  def index
    @cats = Cat.all
  end

  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.create(check_params)
    if @cat.valid?
        redirect_to cats_path
      else
        flash[:errors] = @cat.errors.full_messages
        redirect_to new_cat_path
      end
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def edit
    @cat = Cat.find(params[:id])
  end

  def update
    @cat = Cat.find(params[:id])
    @cat.update(check_params)
    redirect_to cat_path(@cat)
  end

  def destroy
    @cat = Cat.find(params[:id])
    @cat.destroy
    redirect_to cats_path
  end

  private

  def check_params
    params.require(:cat).permit(:name, :breed, :chill, :adopted)
  end
end
