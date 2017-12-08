class SimulationAnswersController < ApplicationController
  before_action :set_simulation_answer, only: [:show, :edit, :update, :destroy]

  # GET /simulation_answers
  # GET /simulation_answers.json
  def index
    @simulation_answers = SimulationAnswer.all
  end

  # GET /simulation_answers/1
  # GET /simulation_answers/1.json
  def show
  end

  # GET /simulation_answers/new
  def new
    @simulation_answer = SimulationAnswer.new
  end

  # GET /simulation_answers/1/edit
  def edit
  end

  # POST /simulation_answers
  # POST /simulation_answers.json
  def create
    @simulation_answer = SimulationAnswer.new(simulation_answer_params)

    respond_to do |format|
      if @simulation_answer.save
        format.html { redirect_to @simulation_answer, notice: 'Simulation answer was successfully created.' }
        format.json { render :show, status: :created, location: @simulation_answer }
      else
        format.html { render :new }
        format.json { render json: @simulation_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /simulation_answers/1
  # PATCH/PUT /simulation_answers/1.json
  def update
    respond_to do |format|
      if @simulation_answer.update(simulation_answer_params)
        format.html { redirect_to @simulation_answer, notice: 'Simulation answer was successfully updated.' }
        format.json { render :show, status: :ok, location: @simulation_answer }
      else
        format.html { render :edit }
        format.json { render json: @simulation_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /simulation_answers/1
  # DELETE /simulation_answers/1.json
  def destroy
    @simulation_answer.destroy
    respond_to do |format|
      format.html { redirect_to simulation_answers_url, notice: 'Simulation answer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_simulation_answer
      @simulation_answer = SimulationAnswer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def simulation_answer_params
      params.require(:simulation_answer).permit(:user_id, :simulation_id)
    end
end
