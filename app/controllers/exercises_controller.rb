class ExercisesController < ApplicationController
   
  
   def new
        @user = User.find( params[:user_id] )
        @exercise = @user.exercises.build
   end
    
    def create
        @user = User.find( params[:user_id] )
        @exercise = @user.exercises.build(exercise_params)
        if @exercise.save
          flash[:success] = "Exercise Updated!"
          redirect_to user_path( params[:user_id] )
        else
          render action: :new
        end
    end
    
    def edit
      @user = User.find( params[:user_id] )
      @exercise = @user.exercise
    end
    
    def update
      @user = User.find( params[:user_id] )
      @exercise = @user.exercise
      if @exercise.update_attributes(exercise_params)
        flash[:success] = "Exercise Updated!"
        redirect_to user_path( params[:user_id] )
      else
        render action: :edit
      end
    end
    
    
    private
      def exercise_params
        params.require(:exercise).permit(:date, :exercise, :weight, :reps, :max, :bulk, :tone)
      end

    
    
   
end
