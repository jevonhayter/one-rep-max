class ExercisesController < ApplicationController
   before_filter :authenticate_user!
  
  # GET /exercises
  def index
  end

  # GET /exercises/1
  def show
    @exercises = current_user.exercises.order("created_at DESC").paginate(:page => params[:page], :per_page => 5)
  end
  

  # GET /exercises/new
  def new
    @exercise = current_user.exercises.build
  end

  # GET /exercises/1/edit
  def edit
  end

  # POST /exercises
  def create
    @exercise = current_user.exercises.build(exercise_params)

      if @exercise.save
         flash[:success] = "Workout Created!"
         redirect_to exercise_path(current_user) 
      else
         flash[:danger] = "You must enter weight and reps!"
        render action: 'new' 
      end
      
  end

  # PATCH/PUT /exercises/1
  def update
     
      if @exercise.update(exercise_params)
         redirect_to @exercise, notice: 'Exercise was successfully updated.'
      else
         render action: 'edit' 
      end
  end

  # DELETE /exercises/1
  def destroy
     @exercise = Exercise.find(params[:id])
     @exercise.destroy 
     redirect_to exercise_url 
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