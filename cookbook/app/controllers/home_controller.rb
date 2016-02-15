class HomeController < ApplicationController
  def index
    @number_of_recipes = Recipe.count
  end
  def recipe
  end
  def contact
  end
end
