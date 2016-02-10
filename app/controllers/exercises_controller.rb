class ExercisesController < ApplicationController
  before_action :set_exercise, only: [:edit, :update, :destroy]
   

  # GET /exercises
  # GET /exercises.json
  def index
  end

  # GET /exercises/1
  # GET /exercises/1.json
  def show
    @user = User.find(params[:id])
    @exercises = @user.exercises.order("created_at DESC").paginate(page: params[:page])
  end

  # GET /exercises/new
  def new
    @exercise = current_user.exercises.build
  end

  # GET /exercises/1/edit
  def edit
  end

  # POST /exercises
  # POST /exercises.json
  def create
    @exercise = current_user.exercises.build(exercise_params)

    respond_to do |format|
      if @exercise.save
        format.html { redirect_to exercises_path, notice: 'Exercise was successfully created.' }
        format.json { render action: 'show', status: :created, location: @exercise }
        
      else
        format.html { render action: 'new' }
        format.json { render json: @exercise.errors, status: :unprocessable_entity }
        
      end
    end
  end

  # PATCH/PUT /exercises/1
  # PATCH/PUT /exercises/1.json
  def update
    respond_to do |format|
      if @exercise.update(exercise_params)
        format.html { redirect_to @exercise, notice: 'Exercise was successfully updated.' }
        format.json { render action: 'show', status: :ok, location: @exercise }
      else
        format.html { render action: 'edit' }
        format.json { render json: @exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercises/1
  # DELETE /exercises/1.json
  def destroy
    @exercise.destroy
    respond_to do |format|
      format.html { redirect_to exercises_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercise
      @exercise = Exercise.find(params[:id])
    end
    
    

    # Never trust parameters from the scary internet, only allow the white list through.
    def exercise_params
      params.require(:exercise).permit(:date, :exercise, :weight, :reps, :max, :bulk, :tone, :user_id)
    end
end
