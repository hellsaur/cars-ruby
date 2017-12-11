class DealersController < ApplicationController
  def index
    @dealers = Dealer.all
end

def show
  @dealer = Dealer.find(params[:id])
  @id = params[:id]
end
end
