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
  puts "Welcome to Magic Eight-ball"
  puts "Ask me anything"
  gets.strip.to_s
  answer
end

def answer
  puts "I'm thinking..."
  puts "#{@answers.sample}"
  puts "Type quit or just ask another question."
  choice
end

def choice
  response = gets.strip.to_s
  if response == "quit"
    exit
  else
    answer
  end
end

menu