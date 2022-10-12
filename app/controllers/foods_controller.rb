class FoodsController < ApplicationController
  def home
    @foods =  Food.all
  end

  def index
    @foods = Food.all
  end

  def show
    @foods = Food.find(params[:id])
  end

  def new
    @foods = Food.new
  end

  def create
    @foods = Food.new(food_params)

    if @foods.save
      redirect_to foods_path
    else
      render :new
    end
  end

  def edit
    @foods = Food.find(params[:id])
  end

  def update
    @foods = Food.find(params[:id])

    if @foods.update(food_params)
      redirect_to foods_path
    else
      render :edit
    end
  end

  def destroy
    @foods = Food.find(params[:id])

    redirect_to foods_path if @foods.destroy
  end

  private

  def food_params
    params.require(:food).permit(:food_title, :anime_name, :anime_food_recipe)
  end
end
