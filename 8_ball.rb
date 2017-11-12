require "colorize"
require "pry"

@answers = [
  "Follow your heart",
  "Go for it",
  "Dont be a dumbass",
  "Better luck next time",
  "Nope",
  "Never gonna happen",
  "Outlook not so good",
  "Reply hazy try again",
  "Cannot predict now"
]

def menu
  main
end

def main
  puts "Welcome to Magic Eight-ball" .cyan
  puts "Ask me anything" .cyan
  gets.strip.to_s
  answer
end

def answer
  puts "I'm thinking..." .cyan
  puts @answers.sample .green
  puts "Type quit or just ask another question." .cyan
  puts "Press 1 to add your own answer to 8-ball" .cyan
  choice
end

def choice
  response = gets.strip.to_s.downcase
  if response == "quit"
    puts "Thanks for using the magic 8-ball" .red
    exit
  elsif response == "1"
    input
  else
    answer
  end
end

def input
puts "Type your own result and we will add it"
own = gets.strip.to_s
@answers << own
puts "ask another question"
gets.strip.to_s
answer
end

menu