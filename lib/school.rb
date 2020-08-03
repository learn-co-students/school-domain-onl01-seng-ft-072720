# code here!
class School
  
  def initialize(school_name)
    @school_name = school_name
    @roster= {}
    end
    
    def roster
      @roster
    end
    
    def add_student(student, grade)
      if roster[grade] == nil 
        roster[grade] = []
        roster[grade] << student
      else
        roster[grade] << student
      end
    end
    
    
    def grade(grade)
      @roster[grade]
    end
      
       def sort
  @roster.each do |grade, name|
    @roster[grade] = name.sort
  end
  end 
      
end