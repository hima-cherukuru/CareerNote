class Kudo < ActiveRecord::Base
  belongs_to :connection
  belongs_to :user
end
