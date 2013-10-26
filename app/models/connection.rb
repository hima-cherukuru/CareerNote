class Connection < ActiveRecord::Base
  belongs_to :user
  belongs_to :achievement
  has_one :kudo
end
