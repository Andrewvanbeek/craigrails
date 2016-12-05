class ArticlesController < ApplicationController

  def show
    @category = Category.find(params[:category_id])
    @articles = @category.articles
  end

  def new
    @artictle = Article.new
  end

  def create
    @article = Article.new(params[:article])
    @article.save
    @category = Category.find(params[:category_id])
    @category.articles << @article
    @category.save
    redirect_to article_path(@article)
  end

  def edit
    @article = Article.find(params[:id])
    @article.update(params[:article])
    redirect_to category_path(@category)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to category_path(@category)
  end

end

