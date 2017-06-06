class GameState < Game

  def initialize()
    @currentplayer = 0
    @player1_lives = 3
    @player2_lives = 3
  end

  def current_player_wrong
    @currentplayer === 0 ? @player1_lives = @player1_lives- 1 : @player2_lives = @player2_lives - 1
  end

  def current_player_score
    @currentplayer === 0 ? @player1_lives : @player2_lives
  end

  def display_both_scores
    puts "Player 1: #{@player1_lives}/3 | Player 2: #{@player2_lives}/3"
  end
  
  def current_player_name
    @currentplayer === 0 ? "Player: 1 " : "Player: 2 "
  end


  def switch_turns
    @currentplayer === 0 ? @currentplayer = 1 : @currentplayer = 0 
  end
end