class Merchant::DiscountsController < Merchant::BaseController
  def index
    @discounts = current_user.merchant.discounts
  end

  def new
    @discount = Discount.new
  end

  def create
    merchant = current_user.merchant
    discount = merchant.discounts.create(discount_params)
    redirect_to "/merchant/discounts"
    flash[:success] = "Discount #{discount.name} created!"
  end

  def edit
    @discount = Discount.find(params[:id])
  end

  def update
    @discount = Discount.find(params[:id])
    @discount.update(discount_params)
    redirect_to "/merchant/discounts"
    flash[:success] = "Discount #{@discount.name} updated!"
  end

  def destroy
    @discount = Discount.find(params[:id])
    @discount.destroy
    # binding.pry
    redirect_to "/merchant/discounts"
  end
  private

  def discount_params
    params.require(:discount).permit(:id,:name, :discount_percentage, :minimum_quantity)
  end
end
