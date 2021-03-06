class ThemeSetsController < ApplicationController
  def index 
    @theme_sets = ThemeSet.all
  end
  
  def new 
    @theme_set = ThemeSet.new
  end

  def create
    @theme_set = ThemeSet.create(strong_params)
    
    if @theme_set.save 
      redirect_to theme_set_path(@theme_set)
    else
      render :new
    end
  end

  def show 
    find_theme_set
  end

  def edit 
    find_theme_set
  end

  def update
    find_theme_set
    @theme_set.update(strong_params)

    if @set_theme.save
      redirect_to theme_set(@set_theme)
    else
      find_theme_set
      render :edit
    end
  end

  def destroy 
    find_theme_set
    @theme_set.destroy
    redirect_to theme_sets_path
  end

  private 
  def strong_params
    params.require(:theme_set).permit(:name, :category)
  end

  def find_theme_set 
    @theme_set = ThemeSet.find(params[:id])
  end
end
