class OrdersController < InheritedResources::Base

  private

    def order_params
      params.require(:order).permit(:name, :email, :title, :phone, :address, :pay_type)
    end
end

