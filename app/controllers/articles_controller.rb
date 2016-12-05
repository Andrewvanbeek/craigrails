class ArticlesController < ApplicationController

  def show
    @category = Category.find(params[:category_id])
    @article = Article.find(params[:id])
  end

  def new
    @category = Category.find(params[:category_id])
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.url_key = @article.key
    @article.save
    @category = Category.find(params[:category_id])
    @category.articles << @article
    @category.save

    redirect_to edit_category_article_path(@category ,@article)
  end

  def edit
    if params[:key]
    @article = Article.find_by(url_key: params[:key])
    @category = @article.category
    else
    @article = Article.find(params[:id])
    @category = @article.category
    end
  end

  def update
    @article = Article.find_by(url_key: params[:key])
    @article.update(article_params)
    @category = @article.category
    @article.save
    redirect_to category_article_path(@category, @article)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    @category = @article.category
    redirect_to category_path(@category)
  end

  private


def article_params
  params.require(:article).permit(:title, :description, :contact, :price)
end





end

