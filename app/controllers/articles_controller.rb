class ArticlesController < ApplicationController
  def index
    @all_articles = Article.all
  end

  def new
    @new_article = Article.new
  end

  def create
    @create_article = Article.create(article_params)
    redirect_to articles_path
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @edit_article = Article.find(params[:id])
  end

  def update
    @update_article = Article.find(params[:id])
    @update_article.update(article_params)
    redirect_to article_path
  end

  def destroy
    @destroy_article = Article.find(params[:id])
    @destroy_article.destroy
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
