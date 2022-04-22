class ArticlesController < ApplicationController
    def new
        @article = Article.new
    end

    def create
        # render plain: params[:article].inspect
        # @article = Article.new(article_params)
        if @article.save
            #do something
        else
            render 'new'
        # redirect_to article_path(@article)

    end

    private
        def article_params
            params.require(:article).permit(:title, :description)
        end
end 