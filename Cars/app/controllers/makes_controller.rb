class MakesController < ApplicationController
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
    if @make.destroy
      redirect_to make_path
    else
      redirect_back fallback_location: @make
    end
  end
end
