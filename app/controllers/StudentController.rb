require_relative '../../db/config'

class StudentController

    def self.create_student(student_info= {})
        p student_info
        student = Student.new(:first_name => student_info["first_name"],
                    :last_name => student_info["last_name"],
                    :gender => student_info["gender"],
                    :birthday => student_info["birthday"],
                    :email => student_info["email"],
                    :phone => student_info["phone"]
                    )
        student.save
    end

    def self.display_all_students
        Student.all
    end

    def display_certain_student(id)
        Student.find(id)
    end
end


StudentController.create_student({})
StudentController.display_all_students
StudentController.display_certain_student(10)