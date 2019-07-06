class User < ActiveRecord::Base
  validates :uid, presence: true
  has_many :answers
end
