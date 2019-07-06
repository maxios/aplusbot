class User < ActiveRecord::Base
  has_unique_field :uid, trigger_on: :after_initialize

  belongs_to :institution
  has_many :courses
  has_many :answers
end
