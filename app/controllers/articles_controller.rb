class ArticlesController < ApplicationController

  before_action :set_article, only: [:show]

  def index
    @articles = Article.where(public: true )
  end

  # Get Article /article/id
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end
end
