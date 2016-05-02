def towers
puts "Welcome to towers of Hanoi"
puts "move the numbers from one tower to the other"
puts "you cannot put a larger number in front of a smaller number"
puts "only smaller numbers go on top"
puts "have fun!"
puts " "
  tower1 = [3,2,1]
  tower2 = []
  tower3 = []
    while tower2 != [3,2,1] && tower3 != [3,2,1]     
            puts "tower 1| #{tower1}"
            puts " "
            puts "tower 2| #{tower2}"
            puts " "
            puts "tower 3| #{tower3}"
            puts " "
          
            puts "which tower do you want to move from? Please type a 1, 2, or 3 followed by the enter key"
            from = gets.chomp
            from = from.to_i
          
            puts "which tower do you want to move to? Please type a 1, 2, or 3 followed by the enter key"
            to = gets.chomp
            to = to.to_i
          
            if  from == 1 && to == 2
                if tower1.empty? == false
                    if tower2.empty? == true || tower1.last < tower2.last
                    tower2 << tower1.pop
                    end
                end          
            elsif (from == 1 && to == 3)
                if tower1.empty? == false
                    if tower3.empty? == true || tower1.last < tower3.last
                    tower3 << tower1.pop
                    end
                end
            elsif (from == 2 && to == 1 )
                if tower2.empty? == false
                    if tower1.empty? == true || tower2.last < tower1.last
                    tower1 << tower2.pop
                    end
                end
            elsif (from == 2 && to == 3)
                if tower2.empty? == false
                    if tower3.empty? == true || tower2.last < tower3.last
                    tower3 << tower2.pop
                    end
                end
            elsif (from == 3 && to == 1)
                if tower3.empty? == false
                    if tower1.empty? == true || tower3.last < tower1.last
                    tower1 << tower3.pop
                    end
                end
            elsif (from == 3 && to == 2)
                if tower3.empty? == false
                    if tower2.empty? == true || tower3.last < tower2.last
                    tower2 << tower3.pop
                    end
                end
            else
                puts " "
                puts"ERROR!!!"
                puts "please type only a 1, 2, or 3 followed by the enter key"
                puts " "
            end
    end
    
    puts "tower 1| #{tower1}"
    puts " "
    puts "tower 2| #{tower2}"
    puts " "
    puts "tower 3| #{tower3}"
    puts " "  
    puts "Congrats, You did it! But, programming this was way harder"
    puts " "
end

puts towers