class ArticlesController < ApplicationController
  before_action :login_required, except: [:index, :show]

  def index
    @articles = Article.readable_for(current_member).order(released_at: :desc)
  end

  def show
    @article = Article.readable_for(current_member).find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article, notice: "ニュースを作成しました"
    else
      render "new"
    end
  end

  def update
    @article = Article.find(params[:id])
    @article.assign_attributes(article_params)
    if @article.save
      redirect_to @article, notice: "ニュースを更新しました"
    else
      render "edit"
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to :articles
  end

  private
  def article_params
    params.require(:article).permit(:title, :body, :released_at, :expired_at, :member_only)
  end
end
