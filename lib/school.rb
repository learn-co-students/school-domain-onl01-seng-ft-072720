require 'pry'

class School 
attr_accessor :roster, :grade, :name 

  def initialize(name)
   @name = name 
   @roster = {}
  end 
 
  def add_student(name, grade)
    #if roster does not include grade, make it
    if !@roster.include? (grade)
      @roster[grade] = []
    end 
    @roster[grade] << name
  end
  
  def grade(grade)
    @roster[grade]
  end  

  def sort
    @roster.each do |grade, names|
      #Calling the grades in roster and setting them to the new sorted list 
    @roster[grade] = names.sort 
    end
  end 

end 

