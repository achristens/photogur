class ImagesController < ApplicationController

  def index
    @image = Image.all
  end

  def show
    @image = Image.find(params[:id])
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new

    @image.title = params[:image][:title]
    @image.dog_name = params[:image][:dog_name]
    @image.url = params[:image][:url]

    if @image.save
      redirect_to '/images'
    else
      render :new
    end
  end

  def edit
    @image = Image.find(params[:id])
  end

  def update
    @image = Image.find(params[:id])

    @image.title = params[:image][:title]
    @image.dog_name = params[:image][:dog_name]
    @image.url = params[:image][:url]

    if @image.save
      redirect_to "/images/#{@image.id}"
    else
      render :edit
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to "/images"
  end

end
