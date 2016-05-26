class ArticlesController < ApplicationController

  def new
    # the line below this has horrible indentation and should be caught by hound
        @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if(@article.save)
      redirect_to @article
    else
      render :new
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  private

  def article_params
    params.require(:article).permit(:title, :body).merge(user: current_user)
  end
end
