class ArticlesController < ApplicationController
    before_action :set_article, only: [:edit, :update, :show, :destroy]
    before_action 

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
        # @article.user = User.first
        if @article.save
            flash[:success] = "Article successfully creatyesd "
            redirect_to article_path(@article)
            #do somethin
        else
            render 'new'
        # redirect_to article_path(@article)
        end
    end

    def update
    
        if @article.update(article_params)
            flash[:success] = "Article updated successfully"
            redirect_to article_path(@article)
        else
            render 'edit'
        end
    end

    def show
        
    end

    def destroy
    
        @article.destroy
        flash[:danger] = "App destroyd successfuly"
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