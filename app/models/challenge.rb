class Challenge < ActiveRecord::Base
  belongs_to :position
  belongs_to :user
end
