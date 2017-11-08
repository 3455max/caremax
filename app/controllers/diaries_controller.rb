class DiariesController < ApplicationController
  before_action :set_diary, only: [:show, :edit, :update, :destroy]

  # GET /diaries
  # GET /diaries.json
  def index
    @push_day = session[:push_day]
    
     s_day = Date.strptime(@push_day,'%Y-%m-%d')
     e_day = s_day + 1
    
     @diaries = Diary.where(date: s_day...e_day)
    
  end

  # GET /diaries/1
  # GET /diaries/1.json
  def show
  end

  # GET /diaries/new
  def new
    @diary = Diary.new
    @push_day = session[:push_day]
  end

  # GET /diaries/1/edit
  def edit
  end

  # POST /diaries
  # POST /diaries.json
  def create
    @diary = Diary.new
    @diary.date = Date.new(params[:diary][:'date(1i)'].to_i,
                           params[:diary][:'date(2i)'].to_i,
                           params[:diary][:'date(3i)'].to_i)
    @diary.comment = params[:diary][:comment]

    if params[:diary][:photo].present?
      @diary.photo      = params[:diary][:photo].original_filename
      @diary.photo_type = params[:diary][:photo].content_type
      @diary.photo_data = params[:diary][:photo].read
    end

    if @diary.save
      redirect_to diaries_path
    else
      render :new
    end
  end

  # PATCH/PUT /diaries/1
  # PATCH/PUT /diaries/1.json
  def update
     @diary.date = Date.new(params[:diary][:'date(1i)'].to_i,
                            params[:diary][:'date(2i)'].to_i,
                            params[:diary][:'date(3i)'].to_i)
     @diary.comment = params[:diary][:comment]

    if params[:diary][:photo].present?
         @diary.photo      = params[:diary][:photo].original_filename
         @diary.photo_type = params[:diary][:photo].content_type
         @diary.photo_data = params[:diary][:photo].read
    end

    if @diary.save
      redirect_to diaries_path
    else
      render :edit
    end
  end      

  # DELETE /diaries/1
  # DELETE /diaries/1.json
  def destroy
    @diary.destroy
    respond_to do |format|
      format.html { redirect_to diaries_url, notice: 'Diary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def show_image
    @diary = Diary.find(params[:id])
    send_data @diary.photo_data, :filename => @diary.photo, :type => @diary.photo_type, :disposition => 'inline'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diary
      @diary = Diary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diary_params
      params.require(:diary).permit(:date, :comment, :photo)
    end
end