class FestsController < ApplicationController
  before_action :set_fest, only: [:show, :edit, :update, :destroy]

  # GET /fests
  # GET /fests.json
  def index
    @fests = Fest.all
  end

  # GET /fests/1
  # GET /fests/1.json
  def show
  end

  # GET /fests/new
  def new
    @fest = Fest.new
  end

  # GET /fests/1/edit
  def edit
  end

  # POST /fests
  # POST /fests.json
  def create
    @fest = Fest.new(fest_params)

    respond_to do |format|
      if @fest.save
        format.html { redirect_to @fest, notice: 'Fest was successfully created.' }
        format.json { render :show, status: :created, location: @fest }
      else
        format.html { render :new }
        format.json { render json: @fest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fests/1
  # PATCH/PUT /fests/1.json
  def update
    respond_to do |format|
      if @fest.update(fest_params)
        format.html { redirect_to @fest, notice: 'Fest was successfully updated.' }
        format.json { render :show, status: :ok, location: @fest }
      else
        format.html { render :edit }
        format.json { render json: @fest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fests/1
  # DELETE /fests/1.json
  def destroy
    @fest.destroy
    respond_to do |format|
      format.html { redirect_to fests_url, notice: 'Fest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fest
      @fest = Fest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fest_params
      params.require(:fest).permit(:name, :description, :department_id)
    end
end
