@students = [] # an empty array accessible to all methods
def input_students
  puts "Please enter the names of the students "
  puts "To finish, just hit return twice".center(60, "-")
  # get the first name
  name = gets.strip
  # while the name is not empty, reapeat this code
  while !name.empty?  do
    puts"please enter your cohort"
    cohort = gets.strip
    cohort_month= ["january", "february", "march", "april", "may", "june", "july", "august", "september", "october", "november", "december", "unknown"]
    if cohort_month.include?(cohort)
      @students << {name: name,cohort: cohort.to_sym}
    elsif !cohort_month.include?(cohort)
      puts " Try again"
      cohort = gets.strip
    if cohort_month.include?(cohort)
        @students << {name: name,cohort: cohort.to_sym}
    else
      @students << {name: name,cohort: :unknown}
        break
    end
  end
    # add the student hash to the array
    #@students << {name: name,cohort: :cohort}
    puts "Now we have #{@students.count} students"
    
    # get another name from the user
    name = gets.strip
  end 
end

def interactive_menu 
  loop do
    print_menu
    process(gets.chomp)
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit"
end

def show_students
  print_header
  print_students_list
  print_footer
end

def save_students
  #open the file for writing
  file = File.open("students.csv", "w")
  #iterate over array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def load_students
  file = File.open("students.csv", "r")
  file.readlines.each do |line|
  name, cohort = line.chomp.split(',')
    @students << {name: name, cohort: cohort.to_sym}
  end
  file.close
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "3"
    save_students
  when "4"
    load_students
  when "9"
    exit
  else
    puts "I dont know what you meant,try again"  
  end
end

def print_header
  puts "The student of Villains Academy".center(60, "-")
end

def print_students_list  
  @students.each do |student|
  puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end 

def print_footer
  puts "Overall, we have #{@students.count} great students"
end
interactive_menu


