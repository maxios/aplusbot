class Attendable < ActiveRecord::Base
  has_unique_field :uid, trigger_on: :after_initialize

  belongs_to :instructor, foreign_key: :user_id, class_name: 'Instructor'
  belongs_to :student, foreign_key: :user_id, class_name: 'Student'
  belongs_to :resource, polymorphic: true
end
