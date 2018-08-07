class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :update, :edit, :destroy]
  def index
    @articles = Article.all
  end

  def show
    # @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_params)
    redirect_to articles_path
  end

  def update
    # @article = Article.find(params[:id])
    @article.update(article_params)
    redirect_to articles_path
  end

  def edit
    # @article = Article.find(params[:id])
  end

  def destroy
    # @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end
end