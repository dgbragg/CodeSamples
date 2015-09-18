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