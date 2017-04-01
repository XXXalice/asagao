class ArticlesController < ApplicationController

  def index
    @articles = Article.order(released_at: :desc)
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
