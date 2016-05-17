class NumberSetsController < ApplicationController
  before_action :set_number_set, only: [:show, :edit, :update, :destroy]

  # GET /number_sets
  # GET /number_sets.json
  def index
    @number_sets = NumberSet.all
  end

  # GET /number_sets/1
  # GET /number_sets/1.json
  def show
  end

  # GET /number_sets/new
  def new
    @number_set = NumberSet.new
  end

  # GET /number_sets/1/edit
  def edit
  end

  # POST /number_sets
  # POST /number_sets.json
  def create
    @number_set = NumberSet.new(number_set_params)

    respond_to do |format|
      if @number_set.save
        format.html { redirect_to @number_set, notice: 'Number set was successfully created.' }
        format.json { render :show, status: :created, location: @number_set }
      else
        format.html { render :new }
        format.json { render json: @number_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /number_sets/1
  # PATCH/PUT /number_sets/1.json
  def update
    respond_to do |format|
      if @number_set.update(number_set_params)
        format.html { redirect_to @number_set, notice: 'Number set was successfully updated.' }
        format.json { render :show, status: :ok, location: @number_set }
      else
        format.html { render :edit }
        format.json { render json: @number_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /number_sets/1
  # DELETE /number_sets/1.json
  def destroy
    @number_set.destroy
    respond_to do |format|
      format.html { redirect_to number_sets_url, notice: 'Number set was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_number_set
      @number_set = NumberSet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def number_set_params
      params.require(:number_set).permit(:name_number_set, :description_number_set)
    end
end
