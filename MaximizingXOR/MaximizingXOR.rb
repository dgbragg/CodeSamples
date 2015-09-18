#  Maximizing XOR (Bitwise Operation)

#  Problem Statement
#  Given two integers, L and R, find the maximal value of A xor B, 
#  where A and B satisfy the following condition:  L≤A≤B≤R

#  Input Format
#  The input contains two lines; L is present in the first line and R in the second line.

#  Constraints 
#  1≤L≤R≤1000

#  Output Format
#  The maximal value as mentioned in the problem statement.

class MaxXOR
    
    def initialize
        @l = gets.strip.to_i
        @r = gets.strip.to_i
    end
       
    def find_max
        xormax = 0
        (@l..@r).each do |i|
          (@l..@r).each do |j|
            xormax = [xormax, i ^ j].max
          end
        end
        puts xormax
    end
    
end

MaxXOR.new.find_max