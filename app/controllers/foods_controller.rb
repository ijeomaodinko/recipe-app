class FoodsController < ApplicationController
  def index
    # @foods = Food.all
    @foods = current_user.foods
    @cuser = current_user
  end

  def show; end

  def new
    @food = Food.new
  end

  def create
    @food = current_user.foods.new(food_data)

    if @food.save
      redirect_to foods_path
    else
      render :new, status: 'Error occured with Food!'
    end
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to foods_path
  end

  private

  def food_data
    params.require(:foods).permit(:name, :measurement_unit, :price, :quatity)
  end
end
