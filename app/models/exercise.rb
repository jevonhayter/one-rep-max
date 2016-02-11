class Exercise < ActiveRecord::Base
     
    validates :date, presence: true
    validates :weight, presence: true
    validates :reps, presence: true 
    belongs_to :user
    
    
end
