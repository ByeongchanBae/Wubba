puts "Cleaning database..."

UserSelection.destroy_all
User.destroy_all
TechStack.destroy_all
# everything has to be destroyed

# matchees seed (a confirmed match with messages - different scenarios)
# rejected seed
# categories
# post
#
puts "Database had been cleaned!"

puts "Creating users.."
#  users
user_list = [{
  email: "ryan@gmail.com",
  password: "password",
  first_name: "Ryan",
  last_name: "Bae",
  username: "ryanbae",
  city: "Melbourne",
  country: "Australia",
  gender: "Male",
  education: "Monash University Bachelor of Information Technology",
  age: 20,
  employment_status: "Unemployed",
  bootcamp: true,
  experience_level: "0 years"
  # avatar: Faker::Avatar.image
},
{
  email: "angus@gmail.com",
  password: "password",
  first_name: "Angus",
  last_name: "Williamson",
  username: "anguswilliamson",
  city: "Adelaide",
  country: "Australia",
  gender: "Male",
  education: "Adelaide University Bachelor of Media",
  age: 28,
  employment_status: "Unemployed",
  bootcamp: true,
  experience_level: "0 years"
  # avatar: Faker::Avatar.image
},
{
  email: "kiera@gmail.com",
  password: "password",
  first_name: "Kiera",
  last_name: "Hu",
  username: "kierah",
  city: "Melbourne",
  country: "Australia",
  gender: "Female",
  education: "Deakin University Bachelor of Commerce",
  age: 23,
  employment_status: "Unemployed",
  bootcamp: true,
  experience_level: "0 years"
  # avatar: Faker::Avatar.image
},
{
  email: "kate@gmail.com",
  password: "password",
  first_name: "Kate",
  last_name: "Smith",
  username: "katesmith",
  city: "Sydney",
  country: "Australia",
  gender: "Female",
  education: "Macquarie University Bachelor of Computer Science",
  age: 33,
  employment_status: "Employed",
  bootcamp: false,
  experience_level: "12 years"
  # avatar: Faker::Avatar.image
},
{
  email: "john@gmail.com",
  password: "password",
  first_name: "John",
  last_name: "Donald",
  username: "johndonald",
  city: "Melbourne",
  country: "Australia",
  gender: "Male",
  education: "University of Melbourne Bachelor of Computer Science",
  age: 30,
  employment_status: "Employed",
  bootcamp: true,
  experience_level: "9 years"
  # avatar: Faker::Avatar.image
},
{
  email: "sam@gmail.com",
  password: "password",
  first_name: "Sam",
  last_name: "Tech",
  username: "samtech",
  city: "Melbourne",
  country: "Australia",
  gender: "Male",
  education: "Deakin University Bachelor of Computer Science",
  age: 24,
  employment_status: "Employed",
  bootcamp: false,
  experience_level: "3 years"
  # avatar: Faker::Avatar.image
},
{
  email: "carl@gmail.com",
  password: "password",
  first_name: "Carl",
  last_name: "Mason",
  username: "carlmason",
  city: "Melbourne",
  country: "Australia",
  gender: "Male",
  education: "Monash University Bachelor of Information Technology",
  age: 22,
  employment_status: "Employed",
  bootcamp: false,
  experience_level: "1 years"
  # avatar: Faker::Avatar.image
},
{
  email: "phil@gmail.com",
  password: "password",
  first_name: "Phil",
  last_name: "Williams",
  username: "philwilliams",
  city: "Melbourne",
  country: "Australia",
  gender: "Male",
  education: "None",
  age: 25,
  employment_status: "Employed",
  bootcamp: true,
  experience_level: "4 years"
  # avatar: Faker::Avatar.image
},
{
  email: "nick@gmail.com",
  password: "password",
  first_name: "Nick",
  last_name: "John",
  username: "nickjohn",
  city: "Brisbane",
  country: "Australia",
  gender: "Male",
  education: "Deakin University Bachelor of Arts(Drama)",
  age: 22,
  employment_status: "Employed",
  bootcamp: true,
  experience_level: "1 years"
  # avatar: Faker::Avatar.image
},
{
  email: "lily@gmail.com",
  password: "password",
  first_name: "Lily",
  last_name: "Bloom",
  username: "lilybloom",
  city: "Melbourne",
  country: "Australia",
  gender: "Female",
  education: "Monash University Bachelor of Business",
  age: 50,
  employment_status: "Employed",
  bootcamp: true,
  experience_level: "5 years"
  # avatar: Faker::Avatar.image

}]

#  images
User.create!(user_list)
file = URI.open('https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
user = User.find_by(email: "ryan@gmail.com")
user.avatar.attach(io: file, filename: 'user.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1556157382-97eda2d62296?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
user = User.find_by(email: "angus@gmail.com")
user.avatar.attach(io: file, filename: 'user2.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1485827404703-89b55fcc595e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
user = User.find_by(email: "kiera@gmail.com")
user.avatar.attach(io: file, filename: 'user3.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1606511647870-4106713a7354?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
user = User.find_by(email: "kate@gmail.com")
user.avatar.attach(io: file, filename: 'user4.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1533227268428-f9ed0900fb3b?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1758&q=80')
user = User.find_by(email: "john@gmail.com")
user.avatar.attach(io: file, filename: 'user5.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1577880216142-8549e9488dad?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
user = User.find_by(email: "sam@gmail.com")
user.avatar.attach(io: file, filename: 'user6.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1480429370139-e0132c086e2a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80')
user = User.find_by(email: "carl@gmail.com")
user.avatar.attach(io: file, filename: 'user7.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1561677843-39dee7a319ca?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
user = User.find_by(email: "phil@gmail.com")
user.avatar.attach(io: file, filename: 'user8.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1555258577-9c68a1b59f1d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80')
user = User.find_by(email: "nick@gmail.com")
user.avatar.attach(io: file, filename: 'user9.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1571281843402-3cd9758bc825?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=375&q=80')
user = User.find_by(email: "lily@gmail.com")
user.avatar.attach(io: file, filename: 'user10.png', content_type: 'image/png')

puts "Created #{User.count} users!"

puts "Creating Tech Stacks.."

#  tech stacks
tech_stacks_list = [{
  name: "JavaScript"
},
{
  name: "HTML"
},
{
  name: "CSS"
},
{
  name: "Ruby"
},
{
  name: "Python"
},
{
  name: "C++"
},
{
  name: "PostgreSQL"
},
{
  name: "React"
},
{
  name: "TypeScript"
},
{
  name: "NodeJS"
},
{
  name: "Linux"
},
{
  name: "MySQL"
},
{
  name: "Sass"
},
{
  name: "Apollo"
},
{
  name: "jQuery"
},
{
  name: "Kotlin"
}]

TechStack.create!(tech_stacks_list)

puts "Created #{TechStack.count} Tech Stacks!"
puts "Created Tech Stacks!"




#  user selections
user_selections_list = [{
  user: User.find_by(email: "ryan@gmail.com"),
  tech_stack: TechStack.find_by(name: "JavaScript"),
  experience: "Beginner",
  objective: "To get a graduate position"
},
{
  user: User.find_by(email: "angus@gmail.com"),
  tech_stack: TechStack.find_by(name: "JavaScript"),
  experience: "Beginner",
  objective: "To become a Software Engineer"
},
{
  user: User.find_by(email: "kiera@gmail.com"),
  tech_stack: TechStack.find_by(name: "Ruby"),
  experience: "Beginner",
  objective: "To get a junior developer position"
},
{
  user: User.find_by(email: "kate@gmail.com"),
  tech_stack: TechStack.find_by(name: "Python"),
  experience: "Advanced",
  objective: "To help people with Python"
},
{
  user: User.find_by(email: "john@gmail.com"),
  tech_stack: TechStack.find_by(name: "JavaScript"),
  experience: "Advanced",
  objective: "To learn a new language"
},
{
  user: User.find_by(email: "sam@gmail.com"),
  tech_stack: TechStack.find_by(name: "Ruby"),
  experience: "Intermediate",
  objective: "To expand my skills"
},
{
  user: User.find_by(email: "carl@gmail.com"),
  tech_stack: TechStack.find_by(name: "C++"),
  experience: "Beginner",
  objective: "To help people get a graduate jobs"
},
{
  user: User.find_by(email: "phil@gmail.com"),
  tech_stack: TechStack.find_by(name: "HTML"),
  experience: "Intermediate",
  objective: "Learn skills to become a senior Software Engineer"
},
{
  user: User.find_by(email: "nick@gmail.com"),
  tech_stack: TechStack.find_by(name: "Kotlin"),
  experience: "Beginner",
  objective: "To learn another language"
},
{
  user: User.find_by(email: "lily@gmail.com"),
  tech_stack: TechStack.find_by(name: "JavaScript"),
  experience: "Intermediate",
  objective: "Want to challenge my knowledge on certain languages"
}]

UserSelection.create!(user_selections_list)
puts "Created #{UserSelection.count} User Selections!"
puts "Created User Selections!"
