# students = [
# name: "Dr. Hannibal Lecter", cohort: :november},
# {name: "Darth Vader", cohort: :november},
# {name: "Nurse Ratched", cohort: :november},
# {name: "Michael Corleone", cohort: :november},
# {name: "Alex Delarge", cohort: :november},
# {name: "The Wicked Wich of the West", cohort: :november},
# {name: "Terminator", cohort: :november},
# {name: "Freddy Krueger", cohort: :november},
# {name: "The Joker", cohort: :november},
# {name: "Joffrey Baratheon", cohort: :november},
# {name: "Norman Bates", cohort: :november}
# ]
def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
    # create an emty array
    students = []
    # get the first name
    name = gets.chomp
    # while the name is not empty, reapeat this code
    while !name.empty? do
      # add the student hash to the array
      students << {name: name, cohort: :november}
      puts "Now we have #{students.count} students"
      # get another name from the user
      name = gets.chomp
    end
    # return the array of students
    students   
end

def print_header
    puts "The student of Villains Academy"
    puts "------------"
end

def print(students)  
    students.each { |student| puts "#{student[:name]} (#{student[:cohort]} cohort)" }
end

def print_footer(students)
    puts "Overall, we have #{students.count} great students"
end
students = input_students
# nothing happens untill we cll the method
print_header
print(students)
print_footer(students)