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
    redirect_to article_path(article), notice:"Article '#{article.title}' Updated!"
  end

  def create
    article.save
    redirect_to article_path(article), notice:"You have successfully created a new Article entitled: '#{article.title}'."
  end

  def destroy
    article.destroy
    redirect_to articles_path, notice:"You have successfully deleted the article entititled '#{article.title}'."
  end

end
