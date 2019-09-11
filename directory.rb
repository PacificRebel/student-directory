# loads data from file

@students = [] # an empty array accessible to all methods

def input_students
  puts "Please enter the name of the student"
    puts "To finish, just hit return twice"
  # get the first name
  name = gets.chomp
# while the name is not empty, repeat this code
  while !name.empty? do

  puts "Please enter the cohort month"
  cohort = gets.chomp
      # add the student hash to the array
  puts "Please enter country of birth"
  country = gets.chomp
  puts "Please enter most important hobby"
  hobby = gets.chomp
  puts "Please enter age of student"
  age = gets.chomp.to_i

  @students << {name: name, cohort: cohort, country: country, hobby: hobby, age: age}
    if @students.count == 1
      puts "Now we have one student."
      puts "Please enter the name of the student"
      puts "To finish, just hit return twice"
      # get another name from the user
      name = gets.chomp
    else
      puts "Now we have #{@students.count} students"
      puts "Please enter the name of the student"
      puts "To finish, just hit return twice"
      # get another name from the user
      name = gets.chomp
    end
  end
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

def print_menu
  puts "1. Input the students."
  puts "2. Show the students."
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit" # 9 because we'll be adding more items
end

def show_students
  print_student_list
  print_footer
end

def save_students
  # open the file for writing
  file = File.open("students.csv", "w")
  # iterate over the array of students
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
    exit # this will terminate programme
  else
    puts "I don't know what you meant, try again"
  end
end

def print_student_list
  if @students.count > 0
    puts "The students of Villains Academy".center(50)
    puts "-------------".center(50)
    @students.each_with_index do |student, i|
    puts "#{i+1}: #{student[:name]}
    #{student[:cohort]} cohort
    country: #{student[:country]}
    main hobby: #{student[:hobby]}
    age: #{student[:age]}".center(50)
   end
  end
end

def print_footer
  if @students.count > 0
    puts "Overall, we have #{@students.count} great students".center(50)
  end
end

interactive_menu
