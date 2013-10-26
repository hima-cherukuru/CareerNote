class Position < ActiveRecord::Base
  belongs_to :user
  has_many :challenges
  has_many :achievements
end
