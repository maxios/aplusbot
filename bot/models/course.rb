class Course < ActiveRecord::Base
  has_unique_field :uid, trigger_on: :after_initialize

  belongs_to :institution, dependent: :destroy
  has_many :attendables, as: :resource, class_name: 'Attendable', dependent: :destroy
  has_many :students, through: :attendables, source: :student
  has_many :instructors, through: :attendables, source: :instructor
end
