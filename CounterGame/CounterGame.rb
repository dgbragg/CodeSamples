#  Counter Game

#  Problem Statement
#  Louise and Richard play a game. They have a counter set to N. 
#  Louise gets the first turn and the turns alternate thereafter. 
#  In the game, they perform the following operations.

#  If N is not a power of 2, reduce the counter by the largest 
#  power of 2 less than N.  If N is a power of 2, reduce the counter 
#  by half of N.  The resultant value is the new N which is again 
#  used for subsequent operations.  The game ends when the counter 
#  reduces to 1, i.e., N == 1, and the last person to make a valid 
#  move wins.

#  Given N, your task is to find the winner of the game.

#  Update If they set counter to 1, Richard wins, because its Louise' 
#  turn and she cannot make a move.

#  Input Format 
#  The first line contains an integer T, the number of testcases. 
#  T lines follow. Each line contains N, the initial number set in the 
#  counter.

#  Constraints
#  1 ≤ T ≤ 10 
#  1 ≤ N ≤ 2power64 - 1

#  Output Format
#  For each test case, print the winner's name in a new line. So if 
#  Louise wins the game, print "Louise". Otherwise, print "Richard". 

class CounterGame
    
    def initialize
        @n = gets.to_i
        @map_squares = (1..64).map {|i| 2**i}
    end
    
    def take_turn (player1="Louise", player2="Richard")
        @winner == player1 ? @winner = player2 : @winner = player1
        (@map_squares.include? @n) ? (@n/=2) : (@n -= @map_squares.select{|i| i < @n}.max)
        return @winner
    end
    
    def solve
        winner = take_turn until @n <= 1     
        puts winner
    end
    
end

gets.to_i.times do
  CounterGame.new.solve
end