class Representative < ActiveRecord::Base
  has_many :assignments, dependent: :destroy
  has_many :surveys, through: :assignments

  def full_name
    "#{first_name} #{last_name}" 
  end 

end
