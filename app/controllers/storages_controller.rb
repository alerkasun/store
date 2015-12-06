class StoragesController < InheritedResources::Base

  private

    def storage_params
      params.require(:storage).permit(:name, :location, :area, :phone)
    end
end

