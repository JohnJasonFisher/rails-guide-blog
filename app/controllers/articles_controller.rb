class ArticlesController < ApplicationController
    def new
    end

    def create
        @article = Article.new(
            title: params[:title],
            text: params[:text]
        )
        if @article.save()
            redirect_to @article
        end
    end

    
end
