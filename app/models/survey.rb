class Survey < ActiveRecord::Base
  has_many :assignments, dependent: :destroy
  has_many :representatives, through: :assignments

  RATINGS = [1,2,3,4,5]
end
