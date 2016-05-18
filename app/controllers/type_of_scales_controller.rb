class TypeOfScalesController < ApplicationController
  before_action :set_type_of_scale, only: [:show, :edit, :update, :destroy]

  # GET /type_of_scales
  # GET /type_of_scales.json
  def index
    @type_of_scales = TypeOfScale.all
  end

  # GET /type_of_scales/1
  # GET /type_of_scales/1.json
  def show
  end

  # GET /type_of_scales/new
  def new
    @type_of_scale = TypeOfScale.new
  end

  # GET /type_of_scales/1/edit
  def edit
  end

  # POST /type_of_scales
  # POST /type_of_scales.json
  def create
    @type_of_scale = TypeOfScale.new(type_of_scale_params)

    respond_to do |format|
      if @type_of_scale.save
        format.html { redirect_to @type_of_scale, notice: 'Type of scale was successfully created.' }
        format.json { render :show, status: :created, location: @type_of_scale }
      else
        format.html { render :new }
        format.json { render json: @type_of_scale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_of_scales/1
  # PATCH/PUT /type_of_scales/1.json
  def update
    respond_to do |format|
      if @type_of_scale.update(type_of_scale_params)
        format.html { redirect_to @type_of_scale, notice: 'Type of scale was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_of_scale }
      else
        format.html { render :edit }
        format.json { render json: @type_of_scale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_of_scales/1
  # DELETE /type_of_scales/1.json
  def destroy
    @type_of_scale.destroy
    respond_to do |format|
      format.html { redirect_to type_of_scales_url, notice: 'Type of scale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_of_scale
      @type_of_scale = TypeOfScale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_of_scale_params
      params.require(:type_of_scale).permit(:name_type_scale, :description_type_scale)
    end
end
