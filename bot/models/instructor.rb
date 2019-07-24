require_relative 'user'

class Instructor < User
  has_many :courses, through: :attendables, source: 'resource', source_type: 'Course'
end
