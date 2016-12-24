class Survey < ActiveRecord::Base
  belongs_to :user
  has_many :assignments, dependent: :destroy
  has_many :representatives, through: :assignments

  RATINGS = [1,2,3,4,5]

  def full_name
    "#{first_name} #{last_name}" 
  end
end
