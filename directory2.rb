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
  puts "Please enter the names of the students with their cohorth and the country they've been born"
  puts "To finish, just hit return twice".center(60, "-")
  # create an emty array
  students = []
  
  # get the first name
  name = gets.chomp
  cohort = gets.chomp.to_s
  country = gets.chomp
  #cohort = gets.chomp.to_s(&:to_sym) 
  #country = gets.chomp
  # while the name is not empty, reapeat this code
  while !name.empty?  do
    if cohort.empty?
    puts "No cohort has been given "
    end
    # add the student hash to the array
    students << {name: name,cohort: cohort.to_sym,country: country}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
    cohort = gets.chomp
    country = gets.chomp
  
end
    # return the array of students
    students   
end

def print_header
  puts "The student of Villains Academy".center(60, "-")

end

def print(students)  
  count = 0
  while count < students.size
  puts "#{count+1}. #{students[count][:name]} (#{students[count][:cohort]} cohort) (#{students[count][:country]} contry)" 
  count = count + 1
  end
end  
#def charecter_12(students)
  #students_list = students.select {|student|student[:name].size < 12}
  #puts students_list
#end 
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end
students = input_students
# nothing happens untill we call the method
print_header
print(students)
print_footer(students)
#charecter_12(students)
