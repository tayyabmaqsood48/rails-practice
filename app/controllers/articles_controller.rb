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

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end
  
  private

  # This will filter what values  are allowed in fields
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
