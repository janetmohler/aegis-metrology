class Representative < ActiveRecord::Base
  has_many :assignments, dependent: :destroy
  has_many :surveys, through: :assignments

  def full_name
    "#{first_name} #{last_name}" 
  end 

  validates :first_name, presence: true, length: { maximum: 50}
  validates :last_name, presence: true, length: { maximum: 50}
end
