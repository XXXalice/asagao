class ArticlesController < ApplicationController

  def index
    @articles = Article.order(released_at: :desc)
  end
end
