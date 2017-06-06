class Game 

  def start
  gs = GameState.new
  puts "Welcome to the game"
  x = 1 

  while x = 1
  question = Question.new
  puts (gs.current_player_name) + question.make_question
  print "> "
  answer = $stdin.gets.chomp.to_i

  if (answer === question.check_question_answer)
    puts "Correct" 
  else
    puts "Wrong"
    gs.current_player_wrong 
  end

  if gs.current_player_score === 0 
    puts (gs.current_player_name) + "has lost."
    return x = 0
  else
    gs.display_both_scores
    gs.switch_turns
  end

  

  
end
end


end