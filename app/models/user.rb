class User < ActiveRecord::Base
  belongs_to :teams
  has_many :tasks
  has_many :projects, through: :tasks
end