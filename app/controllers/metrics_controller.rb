class MetricsController < ApplicationController
  before_action :set_metric, only: [:show, :edit, :update, :destroy]

  # GET /metrics
  # GET /metrics.json
  def index
    @question = Question.find(params[:question_ids])
    @metrics = @question.metrics
  end

  # GET /metrics/1
  # GET /metrics/1.json
  def show
  end

  # GET /metrics/new
  def new
    @metric = Metric.new
    @question = Question.find(params[:question_ids])
    @metric.measures.build
  end

  # GET /metrics/1/edit
  def edit
  end

  # POST /metrics
  # POST /metrics.json
  def create
    @metric = Metric.new(metric_params)
    @questions = Question.where(:id => [:questions_ids])
    @metric.questions << @questions
    @metric.calculus_date = Date.parse(Time.now.to_s)

    respond_to do |format|
      if @metric.save
        @test = calculate_metric_value(@metric.id)
        format.html { redirect_to @metric, notice: 'Metric was successfully created.' }
        format.json { render :show, status: :created, location: @metric }
       
      else
        format.html { render :new }
        format.json { render json: @metric.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /metrics/1
  # PATCH/PUT /metrics/1.json
  def update
    respond_to do |format|
      if @metric.update(metric_params)
        format.html { redirect_to @metric, notice: 'Metric was successfully updated.' }
        format.json { render :show, status: :ok, location: @metric }
      else
        format.html { render :edit }
        format.json { render json: @metric.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metrics/1
  # DELETE /metrics/1.json
  def destroy
    @metric.destroy
    respond_to do |format|
      format.html { redirect_to metrics_url, notice: 'Metric was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metric
      @metric = Metric.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def metric_params
      params.require(:metric).permit(:metric_name, :description_metric, :calculus_date,
        :question_ids, :operator_id,  measures_attributes: [:id, :name_measure, 
          :description_measure, :date_measure, :value_measure, :scale_id, :unit_of_measurement_id])
    end

    def calculate_metric_value(metric_id)      
      @metric = Metric.find(metric_id)
      
      @metric.unit_of_measurement = "#{@metric.measures[0].unit_of_measurement.name} / #{@metric.measures[1].unit_of_measurement.name}" 
      @measures = Measure.where(:metric_id => metric_id)
      case @metric.operator_id
        when (1)
          @metric.metric_result = @measures[0].value_measure
          @metric.save
        when (2)
          value_measure1 = @measures[0].value_measure
          value_measure2 = @measures[1].value_measure
          @metric.metric_result = value_measure1 + value_measure2
          @metric.save
        when (3)
          value_measure1 = @measures[0].value_measure
          value_measure2 = @measures[1].value_measure
          @metric.metric_result = value_measure1 - value_measure2
          @metric.save
        when (4)
          value_measure1 = @measures[0].value_measure
          value_measure2 = @measures[1].value_measure
          @metric.metric_result = value_measure1 * value_measure2
          @metric.save
        when (5)
          value_measure1 = @measures[0].value_measure
          value_measure2 = @measures[1].value_measure
          @metric.metric_result = value_measure1 / value_measure2
          @metric.save
        else
          render new
      end
end
