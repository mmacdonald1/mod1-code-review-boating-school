class Instructor

attr_accessor :name

@@all= []

def initialize(name)
@name= name
@@all << self
end

def self.all
  @@all
end

def fail_student(student_first_name_input)
  chosen_test = BoatingTest.all.find{|test| test.student.first_name == student_first_name_input}
  chosen_test.status= "failed"
end

end
