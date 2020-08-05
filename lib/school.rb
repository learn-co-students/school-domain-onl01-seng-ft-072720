class School
  attr_accessor :roster, :name 
  def initialize(name)
    @name = name 
    @roster = {}
  end
def add_student(student_name, grade)
  roster[grade] ||= []
  roster[grade] << student_name 
  
end
def grade(class_list)
   roster[class_list]
 end
 def sort 
   student_list = {}
   roster.each do |grade, students|
   student_list[grade] = students.sort  
   
   end
   student_list
 end
     
     
     
 
end

