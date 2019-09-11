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

def print_header
  puts "The students of Villains Academy".center(50)
  puts "-------------".center(50)
end
def print(students)
    students.each_with_index do |student, i|
    puts "#{i+1}: #{student[:name]}
    #{student[:cohort]} cohort
    country: #{student[:country]}
    main hobby: #{student[:hobby]}
    age: #{student[:age]}".center(50)
   end
  end

def print_footer(students)
  puts "Overall, we have #{students.count} great students".center(50)
end

students = input_students
#nothing happens until we call the methods
print_header
print(students)
print_footer(students)
