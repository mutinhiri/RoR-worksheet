class ArticlesController < ApplicationController
    def new
        @article = Article.new
    end

    def edit
        @article = article.find
    end

    def create
        @article = Article.new(article_params)
        if @article.save
            flash[:notice] = "Article successfully creatyesd "
            redirect_to article_path(@article)
            #do somethin
        else
            render 'new'
        # redirect_to article_path(@article)
        end
    end

    def show
        @article = Article.find(params[:id])
    end
    private
        def article_params
            params.require(:article).permit(:title, :description)
        end
end 