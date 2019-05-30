class ArticlesController < ApplicationController
    add_flash_types :success, :info
    def index
        @articles = Article.order('fecha DESC')
        if (params[:search].present? && params[:searchmax].present?)
            @articles = @articles.where("fecha >= ?", "#{params[:search]}")
            @articles = @articles.where("fecha <= ?", "#{params[:searchmax]}")
        elsif (params[:search].present?)
            @articles = @articles.where("fecha LIKE ?", "%#{params[:search]}%")
        elsif(params[:searchmax].present?)
            @articles = @articles.where("fecha LIKE ?", "%#{params[:searchmax]}%")
        end
        if params[:searchtitle].present?
            @articles = @articles.where("title LIKE ?", "%#{params[:searchtitle]}%")
        end
        if params[:searchtipo].present?
            @articles = @articles.where("tipo_consulta LIKE ?", "%#{params[:searchtipo]}%")
        end
        if params[:searchcie].present?
            @articles = @articles.where("cie LIKE ?", "%#{params[:searchcie]}%")
        end
    end
    
    def show
        @article = Article.find(params[:id])
    end
    def new
        @article = Article.new
    end
    def create
        @article = Article.new(article_params)
        if @article.save
            redirect_to @article, success: "Guardado con éxito"
        else
            render :new
        end
    end
    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        redirect_to articles_path, success: "Eliminada con éxito"
    end
    def update
        @article = Article.find(params[:id])
        if @article.update(article_params)
            redirect_to @article, success: "Actualizada con éxito"
        else
            render :edit
        end
    end
      
    def edit
        @article = Article.find(params[:id])
    end
    
    private

    def article_params
        params.require(:article).permit(:title,:cover,:documents,:fecha,:body,:tipo_consulta,:cie,:sintomas,:medicacion,:examenes,:diagnostico,:hospital,:doctor)
    end

end