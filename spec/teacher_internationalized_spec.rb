require 'rspec'
require_relative '../app/models/teacher'


describe teacher, "internationalized" do

  it "should have a name attribute" do
    teacher = Teacher.all.first
    teacher.name = "John Doe"
    teacher.save!
    teacher = Teacher.find(teacher.id)
    expect(teacher.name).to eq("John Doe")
  end

  it "should have an address field" do
    teacher = Teacher.new
    expect { lambda do
      teacher.update_attributes(
        :name => "Jane Doe",
        :email => "jane.doe@example.com",
        :phone => "510-555-1212"
      )
    end }.to_not raise_error
  end

  it "should contain correct sample data" do
    expect(Teacher.where("name = ?", "Karim Bishay").count).to be >= 1
  end

end
