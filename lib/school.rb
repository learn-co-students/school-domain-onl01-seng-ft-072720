class School
  def initialize(name)
   @name = name
   @roster = {}
  end
  attr_accessor :roster

  def add_student(student_name, grade)
    if roster.include?(grade)
     roster[grade] << student_name
    else
     roster[grade] = []
     roster[grade]=[student_name]
    end
  end
  def grade(grade)
    @grade = grade
    @grade = roster[grade]
  end
  def sort
    sort_hash = {}
    roster.each do |x,y|
      sort_hash [x] = y.sort
    end
    sort_hash
  end
 end
