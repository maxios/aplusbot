class Course < ActiveRecord::Base
  has_unique_field :uid, trigger_on: :after_initialize

  belongs_to :institution, dependent: :destroy
  has_many :instructors
  has_many :students
end
