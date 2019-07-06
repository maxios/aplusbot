class Institution < ActiveRecord::Base
  has_unique_field :uid, trigger_on: :after_initialize

  has_many :students
  has_many :instructors
  has_many :courses
end
