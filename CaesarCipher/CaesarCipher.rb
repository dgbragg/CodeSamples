#  Problem Statement
#  Julius Caesar protected his confidential information from his enemies by 
#  encrypting it. Caesar rotated every letter in the string by a fixed 
#  number K. This made the string unreadable by the enemy. You are given a 
#  string S and the number K. Encrypt the string and print the encrypted string.

#  Input Format
#  Input consists of an integer N equal to the length of the string, followed by 
#  the string S and an integer K.

#  Constraints 
#  1≤N≤100 
#  0≤K≤100 
#  S is a valid ASCII string and doesn't contain any spaces.

#  Output Format
#  For each test case, print the encoded string.

class CaesarCipher
    
    def initialize
         n = gets.strip.to_i
        @s = gets.strip.split('').map(&:to_s)
        @k = gets.strip.to_i
    end
    
    def encrypt
        @k.times do 
            @s.map! {|i| (('A'..'Z').include?(i) or ('a'..'z').include?(i)) ? i.next.chr : i}
        end
        print @s.join
    end
    
end

CaesarCipher.new.encrypt