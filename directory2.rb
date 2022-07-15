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
  puts "Please enter the names of the students "
  puts "To finish, just hit return twice".center(60, "-")
  # create an emty array
  students = []
  
  # get the first name
  name = gets.strip
  # while the name is not empty, reapeat this code
  while !name.empty?  do
    puts"please enter your country"
    country = gets.strip
    puts"please enter your cohort"
    cohort = gets.strip
    cohort_month= ["january", "february", "march", "april", "may", "june", "july", "august", "september", "october", "november", "december", "unknown"]
    if cohort_month.include?(cohort)
      students << {name: name,cohort: cohort.to_sym,country: country}
    elsif !cohort_month.include?(cohort)
      puts " Try again"
      cohort = gets.strip
      if cohort_month.include?(cohort)
        students << {name: name,cohort: cohort.to_sym,country: country}
      else
        students << {name: name,cohort: :unknown,country: country}
        break
      end
     end
    # get another name from the user
    name = gets.strip
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
  if students.size > 1
  puts "Overall, we have #{students.count} great students"
  else
  puts "We have 1 great student"
  end
end

def print_cohort(students)
  cohort_month = []
  students.map { |student| cohort_month << student[:cohort] }
  clean_cohort = cohort_month.uniq
  cohort_index = 0
  while clean_cohort.length > cohort_index do
    puts "#{clean_cohort[cohort_index].capitalize} cohort members:".center(60)
    students.each do |student|
    if student[:cohort] == clean_cohort[cohort_index]
      puts student[:name].center(60)
    end
  end
  cohort_index += 1
  end
end
students = input_students
# nothing happens untill we call the method
print_header
print(students)
print_footer(students)
#charecter_12(students)
print_cohort(students)
