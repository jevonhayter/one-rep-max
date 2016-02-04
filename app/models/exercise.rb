class Exercise < ActiveRecord::Base
    belongs_to :user
    validates :date, presence: true
    validates :weight, presence: true
    validates :reps, presence: true
end
