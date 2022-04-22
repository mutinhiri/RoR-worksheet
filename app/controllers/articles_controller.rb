class ArticlesController < ApplicationController
    def new
        @article = Article.new
    end

    def create
        # render plain: params[:article].inspect
        @article = Article.new(article_params)
    end
end 