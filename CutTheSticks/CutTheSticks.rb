#  Problem Statement
#  You are given N sticks, where the length of each stick is a positive integer. 
#  A cut operation is performed on the sticks such that all of them are reduced 
#  by the length of the smallest stick. Given the length of N sticks, print the 
#  number of sticks that are left before each subsequent cut operation.

#  Input Format 
#  The first line contains a single integer N. 
#  The next line contains N integers: a0, a1,...aN-1 separated by space, where 
#  ai represents the length of ith stick.

#  Output Format 
#  For each operation, print the number of sticks that are cut, on separate lines.

#  Constraints 
#  1 ≤ N ≤ 1000 
#  1 ≤ ai ≤ 1000

class CutTheSticks

  def initialize
      n = gets.strip.to_i
      @sticks = gets.strip.split.map(&:to_i)
  end

  def cut
      while @sticks.first
        @sticks.sort!.reject! {|x| x < 1}
        sticks_min = @sticks.min
        puts @sticks.count if @sticks.count > 0
          @sticks.map! {|x| x-sticks_min}
      end
  end
end

CutTheSticks.new.cut