class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index #DONE
    @articles = Article.all
  end

  def show #DONE
  end

  def new #DONE
    @article = Article.new
  end

  def create #DONE
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_path
  end

  def edit #DONE
    @article = Article.find(params[:id])
  end

  def update #DONE
    @article.update(article_params)
    redirect_to articles_path
  end

  def destroy #DONE
    @article.destroy
    redirect_to articles_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content,)
  end
end
