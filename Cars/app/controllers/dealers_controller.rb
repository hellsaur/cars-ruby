class DealersController < ApplicationController
before_action :set_dealer, only: [:show, :edit, :update, :destroy]

  def index
    @dealers = Dealer.all
end

def show
  @dealer = Dealer.find(params[:id])
end

def new
  @dealer =Dealer.new
end
def create
  @dealer = Dealer.new(dealer_params)
  if @dealer.valid?
    @dealer.save
    redirect_to @dealer
  else
    flash[:dealer] = @dealer.errors.messages
    redirect_back fallback_location: edit_dealer_path(@dealer)
  end
end

def edit
end

def update
    if @dealer.update(dealer_params)
      redirect_to @dealer
    else
      redirect_back fallback_location: edit_dealer_path(@dealer)
    end
  end

  def destroy
    @dealer = Dealer.find(params[:id])
  		@dealer.delete
  		redirect_to dealers_path
end
  private

    def dealer_params
      params.require(:dealer).permit(:city, :address)
    end

    def set_dealer
      @dealer = Dealer.find(params[:id])
    end

end
