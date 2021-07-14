# frozen_string_litral:true
class ArticlesController < ApplicationController
  def index
    # This will fetch all data from database
    # we will use same name that we create new in our console to commit changes in database
    # like Article.new(------------)
    @articles = Article.all
  end

  def show
    @articles = Article.find(params[:id])
  end
end
