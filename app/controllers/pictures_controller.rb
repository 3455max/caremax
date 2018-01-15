class PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :edit, :update, :destroy]

  # GET /pictures
  # GET /pictures.json
  def index
    if params[:mind_id].present?
      @pictures = Picture.where(heart:params[:mind_id])
      #@pictures = Picture.all
    else    
      @pictures = Picture.all
    end
  end

  # GET /pictures/1
  # GET /pictures/1.json
  def show
  end

  # GET /pictures/new
  def new
    @picture = Picture.new
  end

  # GET /pictures/1/edit
  def edit
  end

  # POST /pictures
  # POST /pictures.json
  def create
    @picture = Picture.new
    
    if params[:picture][:filename].present?
      @picture.filename = params[:picture][:filename].original_filename

      File.open("app/assets/images/#{@picture.filename}",'w+b') { |f| 
        f.write(params[:picture][:filename].read)
      }
    end

      if @picture.save
        redirect_to pictures_path
      else
        render :new
      end
  end

  # PATCH/PUT /pictures/1
  # PATCH/PUT /pictures/1.json
  def update
    @picture.heart = params[:picture][:heart]

    if params[:picture][:filename].present?
      @picture.filename = params[:picture][:filename].original_filename

      File.open("app/assets/images/#{@picture.filename}",'w+b') { |f| 
        f.write(params[:picture][:filename].read)
      }
    end

    respond_to do |format|
      if @picture.save
        format.html { redirect_to @picture, notice: 'Picture was successfully updated.' }
        format.json { render :show, status: :ok, location: @picture }
      else
        format.html { render :edit }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pictures/1
  # DELETE /pictures/1.json
  def destroy
    @picture.destroy
    respond_to do |format|
      format.html { redirect_to pictures_url, notice: 'Picture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_picture
      @picture = Picture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def picture_params
      params.fetch(:picture, {})
    end
end
