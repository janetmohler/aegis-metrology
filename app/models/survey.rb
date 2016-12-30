class Survey < ActiveRecord::Base
  belongs_to :user
  has_many :assignments, dependent: :destroy
  has_many :representatives, through: :assignments

  RATINGS = [1,2,3,4,5]

  def full_name
    "#{first_name} #{last_name}" 
  end
  validates :date, presence: true
  validates :first_name, presence: true, length: { maximum: 50}
  validates :last_name, presence: true, length: { maximum: 50}
  validates :company, presence: true
  validates :project, presence: true
  validates :question_1, presence: true
  validates :question_2, presence: true
  validates :question_3, presence: true
  validates :question_4, presence: true
  validates :question_5, presence: true
end
