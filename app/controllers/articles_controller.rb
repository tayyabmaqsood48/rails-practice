# frozen_string_litral:true
class ArticlesController < ApplicationController
  def index
    # This will fetch all data from database
    # we will use same name that we create new in our console to commit changes in database
    # like Article.new(------------)
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  # CREATE an Article
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

  # UPDATE an Article
  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article # this will redirect toward the show
    else
      render :edit
    end
  end

  # Deleting an Article

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to root_path
  end

  private

  # This will filter what values  are allowed in fields
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
