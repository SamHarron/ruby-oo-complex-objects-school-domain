class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        roster[grade] ||= []
        roster[grade] << name
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        sort = {}
        roster.each do |grade, name|
            sort[grade] = name.sort
        end
        sort
    end
end

school = School.new("Seth McFarland High School")
puts school.name

school.add_student("Stewie Griffin", 9)
school.add_student("Lois Griffin", 9)
school.add_student("Stan Smith", 10)
school.add_student("Steve Smith", 10)
school.add_student("Meg Griffin", 11)
school.add_student("Haley Smith", 11)
school.add_student("Chris Griffin", 12)
school.add_student("Francine Smith", 12)

puts school.roster