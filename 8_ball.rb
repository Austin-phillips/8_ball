require "colorize"

@answers = [
  "Follow your heart",
  "Go for it",
  "Dont be a dumbass",
  "Better luck next",
  "Nope",
  "Never gonna happen"
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
  choice
end

def choice
  response = gets.strip.to_s.downcase
  if response == "quit"
    puts "Thanks for using the magic 8-ball" .red
    exit
  else
    answer
  end
end

menu