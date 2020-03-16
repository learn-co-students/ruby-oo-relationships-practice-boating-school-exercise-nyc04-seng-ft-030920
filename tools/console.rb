require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

s1 = Student.new("John D")
s2 = Student.new("Jane D")

i1 = Instructor.new("Mr. Farina")
i2 = Instructor.new("Mr. Carrola")

t1 = BoatingTest.new(s1, "Right of Way", "Failed", i1)
t2 = BoatingTest.new(s1, "Hazard Navigation", "Failed", i2)
t3 = BoatingTest.new(s1, "Use of Horn", "Pending", i1)
t4 = BoatingTest.new(s2, "Right of Way", "Passed", i1)
t5 = BoatingTest.new(s2, "Hazard Navigation", "Failed", i2)
t6 = BoatingTest.new(s2, "Use of Horn", "Pending", i1)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line

