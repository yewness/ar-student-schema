require_relative '../../db/config'

class Teacher < ActiveRecord::Base

	has_many  :subjects
	has_many  :students, through: :subjects

	validates :email, uniqueness: true, format: {with: /\w{1,}\@\w{1,}\.\w{2,}/}
	validate :name, presence: true, uniqueness: true, length: {in: 1..20, message: "Please use a decent name"}

	def name
		name = first_name + " " + last_name
	end

	def teacher_create(first_name, last_name, email, phone)
		a = Teacher.new(:first_name => first_name,
						:last_name => last_name,
						:email => email,
						:phone => phone)
		if a.save
			puts "Successful!"
		else
			puts "Failed"
		end
	end

end