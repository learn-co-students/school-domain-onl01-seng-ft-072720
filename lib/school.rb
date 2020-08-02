class School

    def initialize(name)
        @name= name
        @roster= {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        if @roster[grade]
            @roster[grade] << name
        else
            @roster[grade] = []
            @roster[grade] << name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster = @roster.each { |grade, students| @roster[grade].sort! } 
        @roster.to_h
    end

end