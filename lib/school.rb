# code here!
class School
  ROSTER = {}
  def initialize(school_name)
    @school_name = school_name
  end
  
  def roster
    ROSTER
  end
  
  def add_student(name, grade)
    @student_name = name
    @student_grade = grade 
  if ROSTER[grade] == nil 
    ROSTER[grade] = []
    ROSTER[grade] << name 
  else
    ROSTER[grade] << name 
    
    end
  end 
  
  def grade(grade)
    return ROSTER[grade]
  end
end
