class FoodsController < ApplicationController
  def index
    # @foods = Food.all
    @foods = current_user.foods
    @cuser = current_user
  end

  def show
    @foods = Food.all
  end

  def new
    @foods = Food.all 
    @food = Food.new
  end

  def create
    @food = Food.all
    # @food = Food.new(food_params)
    @food = current_user.foods.new(food_params)

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

  def food_params
    params.require(:foods).permit(:name, :measurement_unit, :price, :quantity)
  end
end
