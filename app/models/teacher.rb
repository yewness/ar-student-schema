require_relative '../../db/config'

class Teacher < ActiveRecord::Base
	# implement your teacher model
	has_many :students
	validate :name, presence: true, uniqueness: true, length: {in: 1..20, message: "Please use a decent name"}
	validate :email, uniqueness: true

end