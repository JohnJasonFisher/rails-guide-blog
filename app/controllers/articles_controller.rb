class ArticlesController < ApplicationController
    def new
    end

    def create
        @article = Article.new(article_params)
        if @article.save()
            redirect_to @article
        end
    end

    def show
        @article = Article.find_by!(id: params[:id])
    end

    private def article_params
        params.require(:article).permit(:title, :text)
    end
end
