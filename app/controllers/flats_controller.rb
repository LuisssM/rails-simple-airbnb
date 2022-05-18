class FlatsController < ApplicationController

  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(params[:id])
    if @flat.save
      flash[:success] = "Flat successfully created"
      redirect_to @flat
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def edit
    @flat = Flat.find(params[:id])
  end

def update
  @flat = Flat.find(params[:id])
    if @flat.update(params[:id])
      flash[:success] = "Flat was successfully updated"
      redirect_to @flat
    else
      flash[:error] = "Something went wrong"
      render 'edit'
    end
end


  def destroy
    @flat = Flat.find(params[:id])
    if @flat.destroy
      flash[:success] = 'Flat was successfully deleted.'
      redirect_to @flat
    else
      flash[:error] = 'Something went wrong'
      redirect_to @flat
    end
  end

end
