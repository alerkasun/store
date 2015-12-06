class AuthorsController < InheritedResources::Base

  private

    def author_params
      params.require(:author).permit(:first_name, :last_name, :date_of_birth)
    end
end

