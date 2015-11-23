require_relative '../../db/config'

class Student < ActiveRecord::Base
	
	has_many  :subjects
	has_many  :teachers, through: :subjects

	validates :age, numericality: {greater_than_or_equal_to: 5}
	validates :email, uniqueness: true, format: {with: /\w{1,}\@\w{1,}\.\w{2,}/}
	validates :phone, format: {with: /\(\d{3}\)\s\d{3}\-\d{4}/}
	
	def name
		name = first_name + " " + last_name
	end

	def age
		age = Date.today.year - birthday.year
	end

end