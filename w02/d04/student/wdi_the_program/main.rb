require 'pry'
require_relative 'human'
require_relative 'teacher'
require_relative 'student'

phil = Teacher.new
phil.speak("Hello and Welcome. Today, I'm going to talk about class hierarchies")

sensibly_named_variable = Student.new

sensibly_named_variable.do_homework ("my homework")
puts sensibly_named_variable.homeworks

sensibly_named_variable.shout("over the rainbow")







