class Assignment < ActiveRecord::Base
  belongs_to :survey
  belongs_to :representative
end
