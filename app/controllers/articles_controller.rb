class ArticlesController < ApplicationController
  def index
    @all_articles = Article.all
  end
end
