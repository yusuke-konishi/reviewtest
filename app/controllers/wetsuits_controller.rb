class WetsuitsController < ApplicationController
  before_action :set_wetsuit, only: [:show, :edit, :update, :destroy]

  # GET /wetsuits
  # GET /wetsuits.json
  def index
    @wetsuits = Wetsuit.all
  end

  # GET /wetsuits/1
  # GET /wetsuits/1.json
  def show
  end

  # GET /wetsuits/new
  def new
    @wetsuit = Wetsuit.new
  end

  # GET /wetsuits/1/edit
  def edit
  end

  # POST /wetsuits
  # POST /wetsuits.json
  def create
    @wetsuit = Wetsuit.new(wetsuit_params)

    respond_to do |format|
      if @wetsuit.save
        format.html { redirect_to @wetsuit, notice: 'Wetsuit was successfully created.' }
        format.json { render :show, status: :created, location: @wetsuit }
      else
        format.html { render :new }
        format.json { render json: @wetsuit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wetsuits/1
  # PATCH/PUT /wetsuits/1.json
  def update
    respond_to do |format|
      if @wetsuit.update(wetsuit_params)
        format.html { redirect_to @wetsuit, notice: 'Wetsuit was successfully updated.' }
        format.json { render :show, status: :ok, location: @wetsuit }
      else
        format.html { render :edit }
        format.json { render json: @wetsuit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wetsuits/1
  # DELETE /wetsuits/1.json
  def destroy
    @wetsuit.destroy
    respond_to do |format|
      format.html { redirect_to wetsuits_url, notice: 'Wetsuit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wetsuit
      @wetsuit = Wetsuit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wetsuit_params
      params.require(:wetsuit).permit(:maker, :type)
    end
end
