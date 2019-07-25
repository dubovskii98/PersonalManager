class ExcategoriesController < ApplicationController
  before_action :set_excategory, only: [:show, :edit, :update, :destroy]

  # GET /excategories
  # GET /excategories.json
  def index
    @excategories = Excategory.all
  end

  # GET /excategories/1
  # GET /excategories/1.json
  def show
  end

  # GET /excategories/new
  def new
    @excategory = Excategory.new
  end

  # GET /excategories/1/edit
  def edit
  end

  # POST /excategories
  # POST /excategories.json
  def create
    @excategory = Excategory.new(excategory_params)

    respond_to do |format|
      if @excategory.save
        format.html { redirect_to @excategory, notice: 'Excategory was successfully created.' }
        format.json { render :show, status: :created, location: @excategory }
      else
        format.html { render :new }
        format.json { render json: @excategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /excategories/1
  # PATCH/PUT /excategories/1.json
  def update
    respond_to do |format|
      if @excategory.update(excategory_params)
        format.html { redirect_to @excategory, notice: 'Excategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @excategory }
      else
        format.html { render :edit }
        format.json { render json: @excategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /excategories/1
  # DELETE /excategories/1.json
  def destroy
    @excategory.destroy
    respond_to do |format|
      format.html { redirect_to excategories_url, notice: 'Excategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_excategory
      @excategory = Excategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def excategory_params
      params.require(:excategory).permit(:name, :desc)
    end
end
