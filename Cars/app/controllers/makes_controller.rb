class MakesController < ApplicationController
before_action :set_make, only: [:show, :edit, :update, :destroy]

  def index
    @makes = Make.all
end

def show
  @make = Make.find(params[:id])
end

def new
  @make =Make.new
end

def create
  @make = Make.new(make_params)
  if @make.valid?
    @make.save
    redirect_to @make
  else
    flash[:make] = @make.errors.messages
    redirect_back fallback_location: edit_make_path(@make)
  end
end

def edit
end

def update
    if @make.update(make_params)
      redirect_to @make
    else
      redirect_back fallback_location: edit_make_path(@make)
    end
  end

  def destroy
    @make.destroy!
      redirect_to makes_path
  end

  private

  def make_params
    params.require(:make).permit(:model, :year, :color)
  end

  def set_make
    @make = Make.find(params[:id])
  end
end
