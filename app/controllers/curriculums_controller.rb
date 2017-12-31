class CurriculumsController < InheritedResources::Base

  private

    def curriculum_params
      params.require(:curriculum).permit(:title)
    end
end

