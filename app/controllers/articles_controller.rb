class ArticlesController < ApplicationController
  expose(:article)
  expose(:articles)

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def update
    article.update_attributes params[:article]
    redirect_to article_path(article)
  end

  def create
    article.save
    redirect_to article_path(article)
  end

  def destroy
    article.destroy
    redirect_to articles_path
  end

end
