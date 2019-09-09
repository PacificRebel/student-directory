#added '.center'

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
  students << {name: name, cohort: cohort}
    puts "Now we have #{students.count} students"
    puts "Please enter the name of the student"
    puts "To finish, just hit return twice"
    # get another name from the user
    name = gets.chomp
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
    puts "#{i+1}: #{student[:name]} (#{student[:cohort]} cohort)".center(50)
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
