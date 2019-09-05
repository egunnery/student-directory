
def input_students
  puts "Please enter the name of students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end

  students
end


def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end


def print(students)
  students.each do |student|
#    students.each_with_index() do |student, i|  # -- question 1
#    if "#{student[:name][0]}" == "t" # -- question 2
    if student[:name].length < 12 # -- question 3
      puts "#{student[:name]} (#{student[:cohort]} cohort)"
#     puts "#{i+1} #{student[:name]} (#{student[:cohort]} cohort)"  # -- question 1
   end
  end
end

def print_footer(names)
  puts  "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
