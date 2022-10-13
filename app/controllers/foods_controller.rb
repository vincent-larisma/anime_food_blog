class FoodsController < ApplicationController

  before_action :foods_show_all, only: [:home, :index]
  before_action :foods_get_id, only: [:show, :edit, :update, :destroy]

  def home
  end

  def about
  end

  def index
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
      redirect_to foods_path, notice: 'Anime Food was successfully created'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @foods.update(food_params)
      redirect_to foods_path, notice: 'Anime Food was successfully edited'
    else
      render :edit
    end
  end

  def destroy
    redirect_to foods_path if @foods.destroy
  end

  private

  def foods_show_all
    @foods =  Food.all.order(created_at: :asc)
  end

  def foods_get_id
    @foods = Food.find(params[:id])
  end
  
  def food_params
    params.require(:food).permit(:food_title, :anime_name, :anime_food_recipe)
  end
  
end
