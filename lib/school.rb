

class School
  attr_reader :name, :roster
  
  @roster = {}
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
end

def add_student(student, grade)
  @roster[grade] ||=[]
  @roster[grade] << student
end
  
  def grade(grade)
    @roster[grade]
end
  
  def sort
    @roster.each_value do |classes|
      classes.sort!
  end
end
  
end