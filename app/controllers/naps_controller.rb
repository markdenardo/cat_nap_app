class NapsController < ApplicationController
  def index
    @naps = Nap.all
  end

  def new
    @nap = Nap.new
  end

  def create
    @nap = Nap.create(check_params)
    if @nap.valid?
        redirect_to naps_path
      else
        flash[:errors] = @nap.errors.full_messages
        redirect_to new_nap_path
      end
  end

  def show
    @nap = Nap.find(params[:id])
  end

  def edit
    @nap = Nap.find(params[:id])
  end

  def update
    @nap = Nap.find(params[:id])
    @nap.update(check_params)
    redirect_to nap_path(@nap)
  end

  def destroy
    @nap = Nap.find(params[:id])
    @nap.destroy
    redirect_to naps_path
  end

  private

  def check_params
    params.require(:nap).permit(:user_id, :cat_id, :day, :location)
  end
end
