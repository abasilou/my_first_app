class DougsController < ApplicationController
  before_action :set_doug, only: [:show, :edit, :update, :destroy]

  # GET /dougs
  # GET /dougs.json
  def index
    @dougs = Doug.all
  end

  # GET /dougs/1
  # GET /dougs/1.json
  def show
  end

  # GET /dougs/new
  def new
    @doug = Doug.new
  end

  # GET /dougs/1/edit
  def edit
  end

  # POST /dougs
  # POST /dougs.json
  def create
    @doug = Doug.new(doug_params)

    respond_to do |format|
      if @doug.save
        format.html { redirect_to @doug, notice: 'Doug was successfully created.' }
        format.json { render :show, status: :created, location: @doug }
      else
        format.html { render :new }
        format.json { render json: @doug.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dougs/1
  # PATCH/PUT /dougs/1.json
  def update
    respond_to do |format|
      if @doug.update(doug_params)
        format.html { redirect_to @doug, notice: 'Doug was successfully updated.' }
        format.json { render :show, status: :ok, location: @doug }
      else
        format.html { render :edit }
        format.json { render json: @doug.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dougs/1
  # DELETE /dougs/1.json
  def destroy
    @doug.destroy
    respond_to do |format|
      format.html { redirect_to dougs_url, notice: 'Doug was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doug
      @doug = Doug.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doug_params
      params[:doug]
    end
end
