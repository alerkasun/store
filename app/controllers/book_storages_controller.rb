class BookStoragesController < InheritedResources::Base

  private

    def book_storage_params
      params.require(:book_storage).permit(:book_id, :storage_id, :amount)
    end
end

