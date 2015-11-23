require_relative '../../db/config'

class Subject < ActiveRecord::Base
	belongs_to :student
	belongs_to :teacher
end