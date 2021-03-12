puts "Cleaning database..."

Match.destroy_all
Post.destroy_all
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
},
{
  email: "miles@gmail.com",
  password: "password",
  first_name: "Miles",
  last_name: "Micheals",
  username: "milesmicheals",
  city: "Perth",
  country: "Australia",
  gender: "Male",
  education: "No university degree",
  age: 38,
  employment_status: "Employed",
  bootcamp: true,
  experience_level: "2 years"
},
{
  email: "shay@gmail.com",
  password: "password",
  first_name: "Shay",
  last_name: "Kim",
  username: "shaykim",
  city: "Melbourne",
  country: "Australia",
  gender: "Female",
  education: "Seoul National University Bachelor of IT",
  age: 27,
  employment_status: "Employed",
  bootcamp: true,
  experience_level: "4 years"
},
{
  email: "kiara@gmail.com",
  password: "password",
  first_name: "Kiara",
  last_name: "Tan",
  username: "kiaratan",
  city: "Melbourne",
  country: "Australia",
  gender: "Female",
  education: "RMIT Masters of IT",
  age: 24,
  employment_status: "Employed",
  bootcamp: false,
  experience_level: "1 year"
},
{
  email: "ian@gmail.com",
  password: "password",
  first_name: "Ian",
  last_name: "Car",
  username: "iancar",
  city: "Melbourne",
  country: "Australia",
  gender: "Male",
  education: "No university degree - self taught",
  age: 32,
  employment_status: "Employed",
  bootcamp: false,
  experience_level: "6 years"
},
{
  email: "mick@gmail.com",
  password: "password",
  first_name: "Mick",
  last_name: "Trump",
  username: "micktrump",
  city: "Sydney",
  country: "Australia",
  gender: "Male",
  education: "Macquarie University Bachelor of Computer Science",
  age: 42,
  employment_status: "Advanced",
  bootcamp: false,
  experience_level: "20 years"
},
{
  email: "ash@gmail.com",
  password: "password",
  first_name: "Ash",
  last_name: "Jobs",
  username: "ashjobs",
  city: "Melbourne",
  country: "Australia",
  gender: "Male",
  education: "Federation University Bachelor of Computer Science",
  age: 32,
  employment_status: "Advanced",
  bootcamp: false,
  experience_level: "10 years"
},
{
  email: "maia@gmail.com",
  password: "password",
  first_name: "Maia",
  last_name: "Vich",
  username: "maiavich",
  city: "Melbourne",
  country: "Australia",
  gender: "Female",
  education: "Federation University Bachelor of Computer Science",
  age: 19,
  employment_status: "Beginner",
  bootcamp: false,
  experience_level: "0 years"
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

file = URI.open('https://images.unsplash.com/photo-1537511446984-935f663eb1f4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
user = User.find_by(email: "miles@gmail.com")
user.avatar.attach(io: file, filename: 'user11.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1564564360647-684f24ae3e1c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1355&q=80')
user = User.find_by(email: "shay@gmail.com")
user.avatar.attach(io: file, filename: 'user12.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1529232356377-57971f020a94?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80')
user = User.find_by(email: "kiara@gmail.com")
user.avatar.attach(io: file, filename: 'user13.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1581382575275-97901c2635b7?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=634&q=80')
user = User.find_by(email: "ian@gmail.com")
user.avatar.attach(io: file, filename: 'user14.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1579798795533-caef937ece1f?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=634&q=80')
user = User.find_by(email: "mick@gmail.com")
user.avatar.attach(io: file, filename: 'user14.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1529421308418-eab98863cee4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1355&q=80')
user = User.find_by(email: "ash@gmail.com")
user.avatar.attach(io: file, filename: 'user15.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1592085549957-ca20be013d96?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=576&q=80')
user = User.find_by(email: "maia@gmail.com")
user.avatar.attach(io: file, filename: 'user16.png', content_type: 'image/png')

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

puts "Created User Selections!"


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
},
{
  user: User.find_by(email: "miles@gmail.com"),
  tech_stack: TechStack.find_by(name: "jQuery"),
  experience: "Beginner",
  objective: "Want to expand my developing skills"
},
{
  user: User.find_by(email: "shay@gmail.com"),
  tech_stack: TechStack.find_by(name: "C++"),
  experience: "Intermediate",
  objective: "Want to expand my developing skills"
},
{
  user: User.find_by(email: "kiara@gmail.com"),
  tech_stack: TechStack.find_by(name: "JavaScript"),
  experience: "Beginner",
  objective: "Want to expand my developing skills"
},
{
  user: User.find_by(email: "ian@gmail.com"),
  tech_stack: TechStack.find_by(name: "Ruby"),
  experience: "Advanced",
  objective: "What to connect and help developers"
},
{
  user: User.find_by(email: "mick@gmail.com"),
  tech_stack: TechStack.find_by(name: "Ruby"),
  experience: "Advanced",
  objective: "What to help junior developers get into the tech world"
},
{
  user: User.find_by(email: "ash@gmail.com"),
  tech_stack: TechStack.find_by(name: "Python"),
  experience: "Advanced",
  objective: "Wanting to help people learn tech languages"
},
{
  user: User.find_by(email: "maia@gmail.com"),
  tech_stack: TechStack.find_by(name: "C++"),
  experience: "Beginner",
  objective: "Looking for someone to practice code"
}]

UserSelection.create!(user_selections_list)
puts "Created #{UserSelection.count} User Selections!"


puts "Creating Posts.."
posts_list = [{
  title: "Learn JavaScript",
  description: "Anyone want to learn JavaScript?",
  user: User.find_by(email: "miles@gmail.com"),
  date: Date.today
},
{
  title: "Learn Ruby",
  description: "Anyone want to learn Ruby?",
  user: User.find_by(email: "ryan@gmail.com"),
  date: Date.today
},
{
  title: "Build a project",
  description: "I am looking for developers to help me create a project",
  user: User.find_by(email: "shay@gmail.com"),
  date: Date.today
  },
{
  title: "Hiring Juniors",
  description: "Hello, my company is looking to hire 2 x Junior developers with a basic understanding of Python",
  user: User.find_by(email: "john@gmail.com"),
  date: Date.today
},
{
  title: "Any junior developers want to build a project for their portfolio",
  description: "I recently finished a bootcamp and am looking for other developers to build projects",
  user: User.find_by(email: "ryan@gmail.com"),
  date: Date.today
},
{
  title: "Join CodeWars",
  description: "Hello everyone, looking for some friends to play CodeWars with",
  user: User.find_by(email: "sam@gmail.com"),
  date: Date.today
},
{
  title: "Hiring mid-level developers at Zip",
  description: "Hello everyone, Zip is looking at hiring more developers.",
  user: User.find_by(email: "lily@gmail.com"),
  date: Date.today
},
{
  title: "Want to learn how to network?",
  description: "Hello, I was wondering if anyone was interested on learning how they can develop their networking skills?",
  user: User.find_by(email: "ian@gmail.com"),
  date: Date.today
},
{
  title: "Want to learn how to write clean code?",
  description: "Hello, I was wondering if anyone was interested on learning how they can improve their coding skills?",
  user: User.find_by(email: "ash@gmail.com"),
  date: Date.today
},
{
  title: "Looking for other students learning to code",
  description: "Hi everyone, my name is Maia and I am a first year student, if anyone one else is learning to code and what to learn together please message me or reply to this post",
  user: User.find_by(email: "maia@gmail.com"),
  date: Date.today
}]
Post.create!(posts_list)
puts "Created #{Post.count} posts!"

puts "Creating matches"

matchs_list = [{
  matchee: User.find_by(email: "ryan@gmail.com"),
  matcher: User.find_by(email: "angus@gmail.com"),
  status: 1
},
{
  matchee: User.find_by(email: "ryan@gmail.com"),
  matcher: User.find_by(email: "lily@gmail.com"),
  status: 1
}]

Match.create!(matchs_list)
puts "Created #{Match.count} matches!"
