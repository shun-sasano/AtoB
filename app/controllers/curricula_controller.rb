class CurriculaController < InheritedResources::Base

  before_action :set_article, only: [:show]

  # GET /articles
  # GET /articles.json
  def index
    @curriculums = Curriculum.all
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    @articles = @curriculum.articles.order(id: "DESC")
  end

  private
    def curriculum_params
      params.require(:curriculum).permit(:title)
    end
      # Use callbacks to share common setup or constraints between actions.
    def set_article
      @curriculum = Curriculum.find(params[:id])
    end
end
