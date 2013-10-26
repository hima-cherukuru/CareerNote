class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :connections
  has_many :interviews
  has_many :positions
  has_many :achievements
  has_many :challenges
  has_many :goals
  has_many :kudos
  has_one :profile
  has_one :reminder
end
