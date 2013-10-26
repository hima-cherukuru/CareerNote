class Achievement < ActiveRecord::Base
  belongs_to :user
  belongs_to :position
  belongs_to :category

  has_many :connections
end
