require_relative '../../db/config'

class Teacher < ActiveRecord::Base
	# has_many :students
	validates :first_name, presence: true
	validates :last_name, presence: true
	# validates :name, presence: true, length: {in: 1..20, message: "Please use a decent name"}
	validates :email, uniqueness: true

end