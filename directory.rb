# adds interactive manu at the bottom

def input_students
  puts "Please enter the name of the student"
    puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp

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

  students << {name: name, cohort: cohort, country: country, hobby: hobby, age: age}
    if students.count == 1
      puts "Now we have one student."
      puts "Please enter the name of the student"
      puts "To finish, just hit return twice"
      # get another name from the user
      name = gets.chomp
    else
    puts "Now we have #{students.count} students"
    puts "Please enter the name of the student"
    puts "To finish, just hit return twice"
    # get another name from the user
    name = gets.chomp
  end
end
  # return the array of students
  students
end

def print(students)
  if students.count > 0
    puts "The students of Villains Academy".center(50)
    puts "-------------".center(50)
    students.each_with_index do |student, i|
    puts "#{i+1}: #{student[:name]}
    #{student[:cohort]} cohort
    country: #{student[:country]}
    main hobby: #{student[:hobby]}
    age: #{student[:age]}".center(50)
   end
  end
end

def print_footer(students)
  if students.count > 0
  puts "Overall, we have #{students.count} great students".center(50)
end
end

def interactive_menu
  students = []
  loop do
    # 1. print the menu and ask the user what to do
    puts "1. Input the students."
    puts "2. Show the students."
    puts "9. Exit" # 9 because we'll be adding more items
    # 2. read the input and save it into a variable
    selection = gets.chomp
  #3. do what the user has asked
  case selection
  when "1"
    students = input_students
  when "2"
    print(students)
    print_footer(students)
  when "9"
    exit # this will terminate programme
  else
    puts "I don't know what you meant, try again"
  end
end
end

interactive_menu
