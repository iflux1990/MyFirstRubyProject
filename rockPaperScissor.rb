#Dem der har fulgt med i tv serien "The big Bang Theory" kender til spillet Rock, Paper, Scissors, Lizard, Spock.
#Dette lille program tager dit input sammenligner det med et random valg og printer en vinder.
beats = {rock: {scissors: 'crushes',lizard: 'crushes'},paper: {rock: 'covers',spock: 'disproves'},scissors: {paper: 'cuts',lizard: 'decapitates'},spock: {scissors: 'smashes',rock: 'vaporizes'},lizard: {spock: 'poizons',paper: 'eats'}}

while true
  puts "Enter rock, paper, scissors, spock, or lizard -- or press Enter to quit"
  input = gets.chomp
  input == '' ? break : (input = input.downcase.to_sym)
  if beats[input]
    puts "Player Picks: #{input.to_s.capitalize}."
    computer_choice = beats.keys.sample(1).first
    puts "Computer Picks: #{computer_choice.to_s.capitalize}.\n"
    if beats[input][computer_choice]
      puts "#{input.to_s.capitalize} #{beats[input][computer_choice]} #{computer_choice.to_s.capitalize}. Player wins!\n--"
    elsif beats[computer_choice][input]
      puts "#{computer_choice.to_s.capitalize} #{beats[computer_choice][input]} #{input.to_s.capitalize}. Computer wins!\n--"
    else
      puts "It's a tie!\n--"
    end
  else
    puts "Invalid choice! Choose again.\n\n--"
  end
end