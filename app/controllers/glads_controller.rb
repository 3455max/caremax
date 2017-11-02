class GladsController < ApplicationController
  before_action :set_glad, only: [:show, :edit, :update, :destroy]

  # GET /glads
  # GET /glads.json
  def index
    @glads = Glad.all
  end

  # GET /glads/1
  # GET /glads/1.json
  def show
  end

  # GET /glads/new
  def new
    @glad = Glad.new
  end

  # GET /glads/1/edit
  def edit
  end

  # POST /glads
  # POST /glads.json
  def create
    @glad = Glad.new(glad_params)

    respond_to do |format|
      if @glad.save
        format.html { redirect_to @glad, notice: 'Glad was successfully created.' }
        format.json { render :show, status: :created, location: @glad }
      else
        format.html { render :new }
        format.json { render json: @glad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /glads/1
  # PATCH/PUT /glads/1.json
  def update
    respond_to do |format|
      if @glad.update(glad_params)
        format.html { redirect_to @glad, notice: 'Glad was successfully updated.' }
        format.json { render :show, status: :ok, location: @glad }
      else
        format.html { render :edit }
        format.json { render json: @glad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /glads/1
  # DELETE /glads/1.json
  def destroy
    @glad.destroy
    respond_to do |format|
      format.html { redirect_to glads_url, notice: 'Glad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_glad
      @glad = Glad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def glad_params
      params.fetch(:glad, {})
    end
end
