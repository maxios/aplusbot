require_relative 'user'

class Student < User
  has_many :courses
end
