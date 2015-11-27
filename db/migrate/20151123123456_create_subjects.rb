require_relative '../config'

class CreateSubjects < ActiveRecord::Migration
	def change
		create_table :subjects do |t|
			t.string :name
			t.integer :student_id
			t.integer :teacher_id
			t.timestamps null:false
		end
	end
end