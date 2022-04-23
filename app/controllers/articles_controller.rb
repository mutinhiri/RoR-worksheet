class ArticlesController < ApplicationController
    before_action :set_article, only: [:edit, :update, :show, :destroy]

    def index
        @articles = Article.all
    end

    def new
        @article = Article.new
    end

    def edit
        
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

    def update
    
        if @article.update(article_params)
            flash[:notice] = "Article updated successfully"
            redirect_to article_path(@article)
        else
            render 'edit'
        end
    end

    def show
        
    end

    def destroy
    
        @article.destroy
        flash[:notice] = "App destroyd successfully"
        redirect_to articles_path(@article)
    end

    private

        def set_article
            @article = Article.find(params[:id])
        end

        def article_params
            params.require(:article).permit(:title, :description)
        end
end 