class ImagesController < ApplicationController
  before_action :ensure_logged_in, except: [:show, :index]
  before_action :load_image, only: [:show, :edit, :update, :destroy]

  def index
    @most_recent_pictures = Image.most_recent_five
    @created_before = Image.created_before(Time.now.months_ago(1))
    @image = Image.all
    # Alternative way to use pictures_created_in_year method:
    @pictures_from_2017 = Image.pictures_created_in_year(2017)
  end

  def show
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new

    @image.title = params[:image][:title]
    @image.dog_name = params[:image][:dog_name]
    @image.url = params[:image][:url]
    @image.user_id = current_user.id

    if @image.save
      redirect_to root_url
    else
      render :new
    end
  end

  def edit
  end

  def update
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
    @image.destroy
    redirect_to home_url
  end

  def load_image
    @image = Image.find(params[:id])
  end
end
