require_relative 'user'

class Instructor < User
  has_many :courses
end
