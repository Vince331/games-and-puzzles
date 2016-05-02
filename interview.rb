### INSTRUCTIONS
#
# Welcome to the App Academy technical interview. For the question, you
# will have 20 minutes to write a solution in Ruby, Python, JavaScript, Perl,
# PHP, or Java. We accept partial solutions, and overall logic is more important
# to us than exact syntax, so try not to stress if your solution is incomplete
# or imperfect. Take a deep breath and focus on your approach to the next
# problem.
#
# We want to evaluate you on your own work, so the interview is closed-book. You
# are not permitted to consult any outside sources: don't ask others for help,
# search the web for solutions, or refer to any notes or code you may have
# written previously. Don't run your code in any REPL or interpreter, and don't
# share this question or your solution with anyone else (even anonymously).
# We take cheating very seriously, and violation is grounds for rejection or
# dismissal from the course.
#
# That said, you may ask your interviewer any questions you might have. We are
# more than happy to help clarify the question or let you know the right syntax
# for the language you're using.
#
# Good luck!



### Cats 'n Hats ###
      # You have 100 cats (You are quite lucky to own so many cats!).

      # You have arranged all your cats in a line. Initially, none of your cats
      # have any hats. You take 100 rounds walking around the cats, always starting
      # at the beginning. Every time you stop at a cat, you put a hat on it if it
      # doesn't have one, and you take its hat off if it has one on.

      # The first round, you stop at every cat. The second round, you only stop at
      # every 2nd cat (#2, #4, #6, #8, etc.). The third round, you only stop at
      # every 3rd cat (#3, #6, #9, #12, etc.). You continue this process until the
      # 100th round (i.e. you only visit the 100th cat).

      # Write a program that prints which cats have hats at the end.


def cats
final = []
i = 1
j = 0
        while j <= 100
            total = 0
            while total <= 100
                if j > 0
                total = (total+i)*j
                else
                total = (total+i)+j
                end
                if final.include(total)
                final.delete(total)
                else
                final << total
                end
            i+=1
            end
            j+=1
        end
p final
end

p cats





# def cats
# final = []
# j = 1
#         while j <= 100
#             total = 0
#             i = 1
#             while total <= 100
#                 total = i*j
#                 if total>100
#                 elsif final.include?(total)
#                 final.delete(total)
#                 else
#                 final << total
#                 end
#             i+=1
#             end
#         j+=1
#         end
# p final
# end

# cats











# def sorted_total(arr1,arr2)
# i = 0
# j = 0
# final = []
#   while i+j < arr1.length+arr2.length
#     if arr1[i] and arr2[j] and arr1[i]>arr2[j]
#       final << arr2[j]
#       j+=1
#     elsif arr1[i] and arr2[j] and arr2[j]>arr1[i]
#       final << arr1[i]
#       i+=1
#     elsif arr1[i]
#       final << arr1[i]
#       i+=1
#     elsif arr2[j]
#       final << arr2[j]
#       j+=1
#     end
#   end
# final
# end

# p sorted_total([1,3,5,7,9],[2,4,6,8])

# def SimpleSymbols(str)

#   i = 0
#   while i < str.length
#     if str[i] =~ /[A-z]/
#       if i-1 < 0 or str[i+1] != "+" or str[i-1] != "+"
#         return false
#       end
#     end
#     i+=1
#   end
# return true
# end

# p SimpleSymbols("+d+=3=+s+")


# def compress_word(str)
#   str = str.split("").sort.join
#   final = []

#   i = 0
#   while i < str.length
#     counter = 1
#     if str[i]== str[i+1]
#       while str[i]==str[i+1]
#       counter+=1
#       i+=1
#       end
#     end
#     final << counter
#     final << str[i]
#     i+=1
#   end
# final.join
# end

# p compress_word("shitssss")












# def PowersofTwo(num)
# i = 0
#   while 2**i < num
#     i+=1
#   end
#   p i
#   if 2**i == num
#     return true
#   else
#     return false
#   end

# end

# p PowersofTwo(8)


# def LookSaySequence(num)
# final = []
# p arr = num.to_s.split("")
# i = 0
# while i < arr.length
#   counter = 1
#   if arr[i] == arr[i+1]
#     while arr[i] == arr[i+1]
#       counter+=1
#       i+=1
#     end
#   end

#   final << counter
#   final << arr[i]
#   i+=1
# end
# final = final.join.to_i
# LookSaySequence(final)
# end

# p LookSaySequence(2466)





# def fizzbuzz(num)
# while num > 0
#   if num%3 == 0 and num%5 == 0
#     puts "fizzbuzz #{num}"
#   elsif num%5 == 0
#     puts "fizz #{num}"
#   elsif num%3 == 0
#     puts "buzz #{num}"
#   end
#   num-=1
# end
# end

# fizzbuzz(15)












# def bubble_sort(arr)
# i = 0
#   while i < arr.length
#     j = 0
#     while j < arr.length-i
#       if arr[j+1] and arr[j] > arr[j+1]
#       arr[j+1], arr[j] = arr[j], arr[j+1]
#       end
#       j+=1
#     end
#     i+=1
#   end
#   p arr
# end


# bubble_sort([6,5,4,3,99,-7,2,1])




# def word_unscrambler(str,arr)
# str = str.split("").sort.join
# i = 0
# final = []
# while i < arr.length
#   if str == arr[i].split("").sort.join
#     final << arr[i]
#   end
#   i+=1
# end
# p final
# end

# word_unscrambler("turn",["numb","turn","runt","nurt"])







# def morse_encode(str)
# morse_code = {
#   "a" => ".-",
#   "b" => "-...",
#   "c" => "-.-.",
#   "d" => "-..",
#   "e" => ".",
#   "f" => "..-.",
#   "g" => "--.",
#   "h" => "....",
#   "i" => "..",
#   "j" => ".---",
#   "k" => "-.-",
#   "l" => ".-..",
#   "m" => "--",
#   "n" => "-.",
#   "o" => "---",
#   "p" => ".--.",
#   "q" => "--.-",
#   "r" => ".-.",
#   "s" => "...",
#   "t" => "-",
#   "u" => "..-",
#   "v" => "...-",
#   "w" => ".--",
#   "x" => "-..-",
#   "y" => "-.--",
#   "z" => "--.."
# }

# final = ""
# i = 0
# while i < str.length
#   if str[i] =~ /[a-z]/
#   final << morse_code[str[i]] << " "
#   else
#   final << str[i]
#   end
#  i+=1
# end
# p final.rstrip
# end

# morse_encode("cat in the hat")










# def wonky_coins(num)
#   if num == 0
#     return 1
#   end
#   test = num.to_s.split
#   i = 0
#   final = []
#   until test.length == 0
#     i = 0
#     inter = []
#     while i < test.length
#       if test[i].to_i/2 == 0
#         final << 0
#       else
#         inter << test[i].to_i/2
#       end
#       if test[i].to_i/3 == 0
#         final << 0
#       else
#         inter << test[i].to_i/3
#       end
#       if test[i].to_i/4 == 0
#         final << 0
#       else
#         inter << test[i].to_i/4
#       end
#     i+=1
#     end
#   test = inter
#   end
# final.length
# end

# p wonky_coins(1)



# def ordered_vowel_words(str)
#   arr = str.split
#   arr.each do |x|
#     if ordered_vowel_word?(x) == true
#       p x
#       #p "shit"
#     end
#   end
# end


# def ordered_vowel_word?(str)
#   current_vowel = "a"
#   i = 0
# while i < str.length
#   if str[i] =~ /[aeiou]/
#     if str[i] >= current_vowel
#       current_vowel = str[i]
#     else
#       return false
#     end
#   end
#   i+=1
# end
# return true
# end

# ordered_vowel_words("this is a test of the vowel ordering system")

# def letter_count(str)
# alphabet = {
#     "a" => 0,
#     "b" => 0,
#     "c" => 0,
#     "d" => 0,
#     "e" => 0,
#     "f" => 0,
#     "g" => 0,
#     "i" => 0,
#     "j" => 0,
#     "k" => 0,
#     "l" => 0,
#     "m" => 0,
#     "n" => 0,
#     "p" => 0,
#     "q" => 0,
#     "r" => 0,
#     "s" => 0,
#     "t" => 0,
#     "u" => 0,
#     "v" => 0,
#     "w" => 0,
#     "x" => 0,
#     "y" => 0,
#     "z" => 0
#   }
# i = 0
#   while i < str.length
#     alphabet[str[i]]+=1
#     i+=1
#   end

# alphabet.select do |x,y|
#   y>0
# end

# end

# p letter_count("cat")









# def no_repeats(start, stop)
# i = 0
# final = []
# while i+start <= stop
#   if no_repeat?(start+i)
#     final << start+i
#   end
#   i+=1
# end
# final
# end

# def no_repeat?(year)
# year = year.to_s
# i = 0
#   while i < year.length
#     j = i+1
#     while j < year.length
#       if year[i] == year[j]
#         return false
#       end
#       j+=1
#     end
#     i+=1
#   end
# return true
# end

# p no_repeats(1980,1987)







# def nearest_larger(arr,i)

# j = 1
#   while i-j >= 0 and i+j <= arr.length
#     if arr[i-j] and arr[i-j] > arr[i]
#       return i-j
#     elsif arr[i+j] and arr[i+j] > arr[i]
#       return i+j
#     end
#     j+=1
#   end
# return nil
# end


# p nearest_larger([8,2,4,3], 2)



# def num_repeats(str)
#   repeats = 0
#  arr = str.split("").sort
#  i = 0
# while i < arr.length
#   if arr[i] == arr[i+1]
#     repeats+=1
#     while arr[i] == arr[i+1]
#       i+=1
#     end
#   end
#   i+=1
# end
# p repeats
# end

# num_repeats("abcdec")

# def caesar_cipher(num, str)

# arr = str.split("")
# i = 0
# final = []
# while i < arr.length
#   if arr[i] =~ /[A-z]/
#        decrement = 0
#     if arr[i].ord+num + decrement > 122
#       while arr[i].ord + num + decrement > 122
#         decrement-=26
#       end
#     end
#     final << (arr[i].ord + num + decrement).chr
#   else
#     final arr[i]
#   end
#   i+=1
# end
# final.join
# end
# p caesar_cipher(55, "hello")

# p "a".ord
# p "A".ord
# p "Z".ord
# p "z".ord




# def greatest_common_factor(number1, number2)
#   if number1 >= number2
#     low_num = number2
#     high_num = number1
#   else
#     low_num = number1
#     high_num = number2
#   end
# i = 1
# low_num_fact = []
#   while i <= low_num
#     if low_num%i == 0
#       low_num_fact << i
#     end
#     i+=1
#   end
# i = 1
# high_num_fact = []
#   while i <= high_num
#     if high_num % i == 0
#       high_num_fact << i
#     end
#     i+=1
#   end
#   i = 0
# while i < low_num_fact.length
#   if high_num_fact.include?(low_num_fact[low_num_fact.length-i-1])
#     return low_num_fact[low_num_fact.length-i-1]
#   end
#   i+=1
# end
# end

# p greatest_common_factor(3,9)







# def longest_palindrome(str)
#   i = 0
#   longest = ""
#   while i < str.length
#     j = i+1
#     while j < str.length
#       if palindrome?(str[i..j])
#         if str[i..j].length > longest.length
#           longest = str[i..j]
#         end
#       end
#       j+=1
#     end
#     i+=1
#   end
# return longest
# end


# def palindrome?(str)
#   i = 0
#   while i < str.length
#     if str[i] != str[str.length-1-i]
#       return false
#     end
#     i+=1
#   end
# return true
# end

# p longest_palindrome("abcdeffe")

# def nth_prime(num)
# counter = 0
# if num <= 0
#   return 0
# end
# i = 0
#   until counter == num
#     if is_prime?(i)
#       counter+=1
#     end
#     i+=1
#   end
# return i-1
# end

# def is_prime?(num)
#   if num <= 1
#     return false
#   end
# i = 2
#   while i < num
#     if num%i == 0
#       return false
#     end
#     i+=1
#   end
# return true
# end

# p nth_prime(3)

# def scramble_string(str,arr)

# final = []
# i = 0
# while i < str.length
# final << str[arr[i]]
# i+=1
# end
# final
# end


# p scramble_string("markov",[5,3,1,4,2,0])





# def capitalize_words(str)
#  arr = str.split
#  final = []
#  i = 0
#   while i < arr.length
#     test = arr[i].split("")
#     final << test[0].upcase
#     j = 1
#     while j < test.length
#     final << test[j]
#     #final << test[1..test.length-1]

#     j+=1
#     end
#     final << " "
#     i+=1
#   end
# p final.join.rstrip
# end

# capitalize_words("this is a sentence")



# def dasherize_number(num)
#   final = []
#   arr = num.to_s.split("").map(&:to_i)
#   i = 0
#   while i < arr.length
#     if arr[i] == 0
#       final << arr[i]
#     elsif i-1 >= 0 and arr[i-1]%2 != 0 and arr[i]%2 != 0
#       final << arr[i] << "-"
#     elsif arr[i]%2 != 0
#       final << "-" << arr[i] << "-"
#     else
#       final << arr[i]
#     end
#     i+=1
#   end
# if final[0] == "-"
#   final.delete_at(0)
# end
# if final[-1] == "-"
#   final.delete_at(-1)
# end
# p final.join
# end

# dasherize_number(3223)







# def most_common_letter(str)
#   str = str.split("").sort
#   i = 0
#   final = 0
#   greatest = ""
#   while i < str.length
#     if str[i] == str[i+1]
#       current = 1
#       while str[i] == str[i+1]
#         current+=1
#         i+=1
#       end
#     end
#     if current >= final
#       final = current
#       greatest = str[i]
#     end
#     i+=1
#   end
# p [greatest,final]
# end

# most_common_letter("abbaba")

# def most_common_letter(str)

#   common = ""
#   total_times = 1
#   i = 0
#   while i < str.length
#     j = i+1
#     current_times = 1
#     while j < str.length
#       if str[i] == str[j]
#         current_times+=1
#       end
#     j+=1
#     end
#     if current_times > total_times
#       total_times = current_times
#       common = str[i]
#     end
#     i+=1
#   end
# [common,total_times]
# end

# p most_common_letter("abbab")


# def third_greatest(arr)
#   great_list = []
#   j = 0
#   while j <= 2
#     greatest = 0
#     i = 0
#     while i < arr.length
#       if arr[i] > greatest and (great_list.include?(arr[i]) == false)
#         greatest = arr[i]
#       end
#       i+=1
#     end
#     great_list << greatest
#     j+=1
#   end
# great_list
# end


# p third_greatest([2,3,7,4,7,7])




# def is_power_of_two(num)
#   i = 0
#   while 2**i <= num
#     if 2**i == num
#       return true
#     end
#     i+=1
#   end
#   return false
# end

# p is_power_of_two(0)







# def two_sum(arr)
#   i = 0
#   final = []
#   while i < arr.length
#     j = i + 1
#     while j < arr.length
#       if arr[i] + arr[j] == 0
#         final << i << j
#       end
#       j+=1
#     end
#     i+=1
#   end
# return final
# end

# p two_sum([1,3,5])








# def nearby_az(str)
# i = 0
# while i < str.length
# if str[i] == "a"
#   j = i+1
#   while j <= 3+i
#     p j
#     if str[j] == "z"
#       return true
#     end
#     j+=1
#   end
# end
# i+=1
# end
# return false
# end

# p nearby_az("abcz")






# def palindrome(str)

#   i = 0
#   while i < str.length
#     if str[i] != str[-(i+1)]
#       return false
#     end
#     i+=1
#   end
# return true
# end

# p palindrome("shitihs")








# def count_vowels(str)
# count = 0
# i = 0
# while i < str.length
#   if str[i] =~ /[aeiou]/
#     count+=1
#   end
#   i+=1
# end
# p count
# end

# count_vowels("color")





# def time_conversion(num)
# min =  num%60
# hour = num/60

# if min.to_s.length == 1
#   min = min.to_s + "0"
# end

# p "#{hour}:#{min}"
# end

# time_conversion(360)






# def sum_nums(num)
# i = 0
# total = 0
# while i <= num
#   total = total + i
#   i+=1
# end
# p total
# end

# sum_nums(4)







# def longest_word(str)
# arr = str.split
# greatest = ""
# i = 0
# while i < arr.length
#   if arr[i].split("").length >= greatest.length
#   greatest = arr[i]
#   end
# i+=1
# end
# p greatest
# end

# longest_word("abc def")



# def factorial(num)


#   total = 1
#   i = 1
#   while i <= num
#     total = total * i
#     i+=1
#   end
# p total
# end

# factorial(6)









# def reverse(str)
#   i = str.length-1
#   final = ""
# while i >= 0
#    final << str[i]
#    i-=1
# end
# p final
# end

# reverse("vince")



# def ThreeFiveMultiples(num)
# i = 0
# total = 0
#   while i < num
#     if i%5 == 0
#       total = total + i
#     elsif i % 3 == 0
#       total = total + i
#     end
#     i+=1
#   end
#   return total
# end


# ThreeFiveMultiples(6)








# def StringReduction(str)
# str = str.split("")
# i = 0
#     until str.uniq.length == 1

#       until str[i] == str[i+1] or str.uniq.length == 1
#         if str[i] == "a" and str[i+1] == "b"
#           str[i] = "c"
#           str.delete_at(i+1)
#           i = 0
#         elsif str[i] == "a" and str[i+1] == "c"
#           str[i] = "b"
#           str.delete_at(i+1)
#           i = 0
#         elsif str[i] == "b" and str[i+1] == "a"
#           str[i] = "c"
#           str.delete_at(i+1)
#           i = 0
#         elsif str[i] == "b" and str[i+1] == "c"
#           str[i] = "a"
#           str.delete_at(i+1)
#           i = 0
#         elsif str[i] == "c" and str[i+1] == "a"
#           str[i] = "b"
#           str.delete_at(i+1)
#           i = 0
#         elsif str[i] == "c" and str[i+1] == "b"
#           str[i] = "a"
#           str.delete_at(i+1)
#           i = 0
#         end
#       end
#       i+=1
#     end

# return str.length
# end

# p StringReduction("bcab")









# def BracketMatcher(str)
# arr = str.split("")
# left = 0
# right = 0
# arr.each do |x|
#   if x == "("
#     left+=1
#   elsif x == ")"
#   right+=1
#   end
# end
# if left == right
#   return 1
# else
#   return 0
# end
# end

# p BracketMatcher "the color re(d))()(()"









# def TripleDouble(num1,num2)
# arr1 = num1.to_s.split("").map(&:to_i)
# arr2 = num2.to_s.split("").map(&:to_i)
# i = 0
# total1 = 0
# total2 = 0
# while i < arr1.length
#   if arr1[i+2] and arr1[i] == arr1[i+1]  and arr1[i] == arr1[i+2]
#     total1 = 1
#     break
#   end
#   i+=1
# end
# j = 0
# while j < arr2.length
# if arr2[j+1] and arr2[j] == arr2[j+1]
# total2 = 1
# end
# j+=1
# end

# if total1 + total2 == 2
#   return 1
# else
#   return 0
# end
# end
# p TripleDouble(800000006,7800)







# def NumberSearch(str)
#  arr = str.split("")
# letter_count = 0
#  i = 0
#  total = 0
#   while i < arr.length
#     if arr[i] =~ /[0-9]/
#        total = total + arr[i].to_i
#     elsif arr[i] =~ /[A-Z]/ or arr[i] =~ /[a-z]/
#       letter_count+=1
#     end
#   i+=1
#   end
# return total/letter_count
# end

# p NumberSearch("30")





# def largest_prime_factor(num)
# i = 2
# primes = []
# while i < num
#   if num%i == 0 and is_prime?(i)
#    primes << i
#   elsif num%i == 0
#     p i
#   end
#   i+=1
# end
# primes
# end


# def is_prime?(num)
#   if num <= 1
#     return false
#   end
#   i = 2
#   while i < num
#     if num % i == 0
#       return false
#     end
#     i+=1
#   end
#   return true
# end

# p largest_prime_factor(600)



# def puppy_golden_age(arr)
#   total = 0
#   i = 0
#   greatest = 0
#   start_i = 0
#   end_i = 0
#   while i < arr.length
#     j = i
#     total = 0
#     while j < arr.length
#       total = total + arr[j]
#       if total > greatest
#         greatest = total
#         start_i = i
#         end_i = j
#       end
#       j+=1
#     end
#     i+=1
#   end
# p [start_i,end_i]
# end

# puppy_golden_age([5, 3, -5, 1, 19, 2, -4])

# def SwapII(str)
# arr = str.split("")
# final = ""
# j = 0
#     while j < arr.length
#       if arr[j] =~ /[A-z]/
#         final << arr[j].swapcase
#       elsif arr[j+1] and (arr[j] =~ /[0-9]/ and arr[j+1] =~ /[A-z]/)
#         final << arr[j]
#         begin_i = j
#         j+=1
#         while arr[j] =~ /[A-Z]/ or arr[j] =~ /[a-z]/
#         final << arr[j].swapcase
#         j+=1
#           if arr[j] =~ /[0-9]/
#             final << arr[j]
#             final[j], final[begin_i] = final[begin_i], final[j]
#           elsif arr[j] =~ /[A-Z]/ or arr[j] =~ /[a-z]/

#           else
#             final << arr[j]
#           end
#         end
#       else
#         final << arr[j]
#       end
#       j+=1
#     end
# return final
# end

#  p SwapII("123gg))((")

# arr = "AA  "
# if arr[0] !=~ /[A-Z]/ or arr[1] !=~ /[a-z]/
# puts "hi"
# end

# def DashInsertII(str)
# str = str.to_s.split("").collect{ |i| i.to_i }
# final = []
# i = 0
# while i < str.length
#   if str[i] == 0
#     final << str[i]
#   elsif str[i+1] != nil and str[i]%2 == 0 and str[i+1]%2 == 0
#     final << str[i] << "*"
#   elsif str[i+1] != nil and str[i]%2 != 0 and str[i+1]%2 != 0
#     final << str[i] << "-"
#   else
#     final << str[i]
#   end
#   i+=1
# end
# p final.join
# end


# DashInsertII(99946)





# def PrimeChecker(num)
# arr = num.to_s.split("")
# arr.permutation(arr.length) do |x|
#   if is_prime?(x.join.to_i)
#     p x
#     return 1
#   end
# end
# return 0
# end


# def is_prime?(num)
# if num <=1
#   return false
# end
# i = 2
# while i < num
#   if num % i == 0
#     return false
#   end
#   i+=1
# end
# return true
# end

# p PrimeChecker(69)


# def PermutationStep(num)
# arr = num.to_s.split("")
#   arr.permutation(arr.length) do |x|
#     if x.join.to_i > num
#       return x.join.to_i
#     end
#   end
# return -1
# end



# p PermutationStep(41352)




# def FormattedDivision(num1,num2)
# total = (num1.to_f/num2.to_f).round(4).to_s.reverse
# i = 0
# final = []
# until total[i] == "."
# final << total[i]
#   i+=1
# end
# i+=1
# final << "."
# j = 0
# while i < total.length
#   if j%3==0 and j!= 0
#   final << ","
#   end
# final << total[i]
# i+=1
# j+=1
# end
# final = final.reverse.join
# return final
# end



# p FormattedDivision(10107728223009449,22)





# def Consecutive(arr)
# arr.sort!.uniq!
# total = (arr[-1]-arr[0])-(arr.length-1)
# return total
# end


# p Consecutive([5,10])














# def SimpleMode(arr)
# most_frequent = 0
# greatest_num = 0
# i = 0
#   while i < arr.length
#     j = i+1
#     counter = 0
#     while j < arr.length
#       if arr[i] == arr[j]
#         counter+=1
#       end
#       j+=1
#     end
#     if counter > most_frequent
#       most_frequent = counter
#       greatest_num = arr[i]
#     end
#     i+=1
#   end
# if most_frequent == 0
#   return -1
# else
#   return greatest_num
# end
# end

# p SimpleMode([3,4,1,6,10])



















# def CaeserCipher(str,num)
# final = []
#   arr = str.split("")
#   arr.each do |letter|
#     decrement = 0
#     if letter =~ /[A-Z]/
#       while (letter.ord + num - decrement) > 90
#       decrement+=26
#       end
#      final << (letter.ord + num - decrement).chr
#     elsif letter =~ /[a-z]/
#       while (letter.ord + num - decrement) > 122
#       decrement+=26
#       end
#      final << (letter.ord + num - decrement).chr
#     else
#     final << letter
#     end
#   end
#   final = final.join
# return final
# end
# p CaeserCipher("Zz eat Shi't!",1)







# def LetterCount(str)
# greatest = ""
# repeat_last = 0
# test = ""
# str =  str.split
# i = 0
#   while i < str.length
#   test = str[i].split("").sort!
#   j = 0
#   repeat = 0
#     while j < test.length
#       if test[j] =~ /[a-z]/
#         if test[j] == test[j+1]
#         repeat+=1
#           while test[j] == test[j+1]
#           j+=1
#           end
#         end
#       end
#       j+=1
#     end
#     if repeat > repeat_last
#       repeat_last = repeat
#       greatest = str[i]
#     end
#     i+=1
#   end
# return greatest
# end


# p LetterCount("Today, is the greatest day ever!")



# def BinaryConverter(str)
# final = 0
# str.reverse!
# i = 0
# while i < str.length
#   if str[i] == "1"
#   final = 2**i + final
#   end
#   i+=1
# end
# return final
# end

# p BinaryConverter("0")


# def in_words(num)
# arr = num.to_s.split("")
# hundred = "hundred"
# thousand = "thousand"
# million = "million"
# billion = "billion"
# trillion = "trillion"

# zero_to_nine  = {
#     0 => '',
#     1 => 'one',
#     2 => 'two',
#     3 => 'three',
#     4 => 'four',
#     5 => 'five',
#     6 => 'six',
#     7 => 'seven',
#     8 => 'eight',
#     9 => 'nine',
# }

# ten_to_nineteen = {
#   10 => 'ten',
#   11 => 'eleven',
#   12 => 'twelve',
#   13 => 'thirteen',
#   14 => 'fourteen',
#   15 => 'fifteen',
#   16 => 'sixteen',
#   17 => 'seventeen',
#   18 => 'eighteen',
#   19 => 'nineteen',
# }

# twenty_to_ninety = {
#     2 => 'twenty',
#     3 => 'thirty',
#     4 => 'forty',
#     5 => 'fifty',
#     6 => 'sixty',
#     7 => 'seventy',
#     8 => 'eighty',
#     9 => 'ninety',
# }

# final = []
# i = 0
#   if arr[i].to_i == 0 and arr.length == 1
#     return "zero"
#   else
#   # j = 0
#   # while j < arr.length
#   #  test = arr[i] << arr[i+1] << arr[i+2]
# # if arr1.length > 15
# # while arr1.length > 15
# #  arr << arr1[j]
# #  j+=1
# # end
# # end



#     while i < arr.length


#       if arr.length - i == 3
#         if arr[i] == "0"
#         else
#         final << zero_to_nine[arr[i].to_i]
#         final << hundred
#         end
#         i+=1
#       end

#       if arr.length - i == 2
#         if arr[i] == "0"
#         i+=1
#         elsif (arr[i]+arr[i+1]).to_i > 9 and (arr[i]+arr[i+1]).to_i < 20
#         final << ten_to_nineteen[(arr[i]+arr[i+1]).to_i]
#         i+=2
#         elsif (arr[i]+arr[i+1]).to_i > 19 and (arr[i]+arr[i+1]).to_i < 100
#         final << twenty_to_ninety[arr[i].to_i] << zero_to_nine[arr[i+1].to_i]
#         i+=2
#         end
#       end

#       if arr.length - i == 1
#         final << zero_to_nine[arr[i].to_i]
#       end

#       i+=1
#      # end
#      # j+=3
#     end
#   end
# final.join(" ").rstrip
# end
# p in_words(90)



#  [1, 2, 3, 4].inject(0) { |result, element| result + element }
# p final = []
# nums = ["Yay ", "for ", "strings!"]
# p final = nums.inject("Yay ",:+)



# def ArithGeoII(arr)
# geo = arr[-1].to_f/arr[-2].to_f
# arith = arr[1]-arr[0]

# i = 0
#   while i < arr.length
#     if arr[i+1] and arr[i+1].to_f/arr[i].to_f == geo
#       if i+1 == arr.length-1
#         return "Geometric"
#       end
#       i+=1
#     else
#       break
#     end
#   end

# j = 0
#   while j < arr.length
#     if arr[j+1] and arr[j+1] - arr[j] == arith
#       if j+1 == arr.length-1
#         return "Arithmetic"
#       end
#       j+=1
#     else
#       break
#     end
#   end


# return -1

# end


# p ArithGeoII([1, 5, 9])



# def CountingMinutesI(str)
# arr, arr2 = str.split("-")
# arr = arr.split("")
# arr2 = arr2.split("")
# ampm1 = arr.pop(2).join
# ampm2 = arr2.pop(2).join
# hour1, min1 = arr.join.split(":")
# hour2, min2 = arr2.join.split(":")
# totalmin1 = ((hour1.to_i)*60)+(min1.to_i)
# totalmin2 = ((hour2.to_i)*60)+(min2.to_i)

#   if ampm1 == "pm" and ampm2 == "pm"
#     if totalmin1 <= totalmin2
#       return totalmin2-totalmin1
#     elsif totalmin1 > totalmin2
#       return (720-totalmin1)+720+totalmin2
#     end
#   end

#   if ampm1 == "pm" and ampm2 == "am"
#     return (720-totalmin1)+totalmin2
#   end
#   if ampm1 == "am" and ampm2 == "pm"
#     return (720-totalmin1)+totalmin2
#   end

#   if ampm1 == "am" and ampm2 == "am"
#     if totalmin1 > totalmin2
#       return (720-totalmin1)+totalmin2+720
#     elsif totalmin1 <= totalmin2
#       return totalmin2-totalmin1
#     end
#   end

# end

# p CountingMinutesI("4:00am-3:29am")

















# def StringScramble(str1, str2)
#   str2 = str2.split("")
#   str1 = str1.split("")
# i = 0
#   while i <= str1.length
#     str1.permutation(i) do |x|
#       p x
#       if x == str2
#         return true
#       end
#     end
#     i+=1
#   end
#   return false
# end

# start = Time.now
# StringScramble("yrtexrraniado", "extrao")
# finish = Time.now
# puts finish - start





# def ArrayAdditionI(arr)
# arr.sort!
# test = arr.pop
# i = 0
# while i < arr.length
#   arr.combination(i) do |x|
#     total = 0
#     x.each do |y|
#       total+=y
#       if total == test
#         p x
#         return true
#       end
#     end
#   end
#   i+=1
# end
# return false
# end

# p ArrayAdditionI([3,5,-1,8,12])



# def largest_prime_factor(num)
#   test = 0
#   i = num/2
#   while i > 0
#     test = num%i
#   if test == 0 && if is_prime?(i) != false
#     return i
#     end
#   end
#   i-=1
#   end
# return nil
# end

# def is_prime?(num)
#   i = 2
#   while i < num
#     if num%i == 0
#       return false
#     end
#     i+=1
#   end
# return true
# end

# p largest_prime_factor(2)







# def fibonacci(num)
# i = 0
# fib = [1,2]
# final = []
# final << fib.[](0) << fib.[](1)
#   while i < num
#   fib[2] = fib[0]+fib[1]
#   final << fib[2]
#   fib.shift
#   i+=1
#   end
# p final
# end

# fibonacci(8)












# arr = [1,2,3,4,5]

# i = 0
# arr[i..(arr.length-1)].each do |x|
#   p x
# end
# arr.each do |x|
#   p x
# end



# def substrings(str)
#   final = []
#   i = 0
#   str = str.split("")
#   str[i..str.length-1]
#   final << [i..str.length-1]
#   i+=1
#   end

# p final
# end
# substrings("cat")

# def substrings(str)
# final = []
# arr = str.split("")
#   arr.each do |i|
#     current = ""
#     arr.each do |j|
#       current = current + j
#       final << current
#     end
#   end
# p final
# end

# substrings("cat")



# def substrings(str)
#   i = 0
#   final = []
#   while i < str.length
#     j = i
#     current = ""
#     while j < str.length
#      current = current + str[j]
#      final << current
#      j+=1
#     end
#     i+=1
#   end
# p final
# end

# substrings("shit")


# def bubble_sort(arr)
# i = 0

#   while i < arr.length
#     j = 0
#     while j < arr.length- i
#       if arr[j+1] and arr[j] > arr[j+1]
#       arr[j] ,arr[j+1] = arr[j+1] ,arr[j]
#       end
#       j+=1
#     end
#     i+=1
#   end
# p arr
# end

# bubble_sort([55,5, 4, 3, 2, 1,5,9,100,99,1,2])

# def rec_intersection(rect1, rect2)
#   bottom_left_x = 0
#   bottom_left_y = 0
#   top_right_x = 0
#   top_right_y = 0

#   if rect1[0][0] > rect2[0][0]
#     bottom_left_x = rect1[0][0]
#   else
#     bottom_left_x = rect2[0][0]
#   end
#   if rect1[0][1] > rect2[0][1]
#     bottom_left_y = rect1[0][1]
#   else
#     bottom_left_y = rect2[0][1]
#   end
#   if rect1[1][0] <= rect2[0][0]
#     return nil
#   end
#   if rect1[1][1] <= rect2[0][1]
#     return nil
#   end
#   if rect1[1][0] < rect2[1][0]
#     top_right_x = rect1[1][0]
#   else
#     top_right_x = rect2[1][0]
#   end
#   if rect1[1][1] < rect2[1][1]
#     top_right_y = rect1[1][1]
#   else
#     top_right_y = rect2[1][1]
#   end



# return [bottom_left_x, bottom_left_y], [top_right_x, top_right_y]


# end

#   p rec_intersection(
#       [[0, 0], [2, 1]],
#       [[1, 1], [3, 1]]
#     )














# def morse_encode(str)
#   str = str.downcase
# morse_code = {
#   "a" => ".-",
#   "b" => "-...",
#   "c" => "-.-.",
#   "d" => "-..",
#   "e" => ".",
#   "f" => "..-.",
#   "g" => "--.",
#   "h" => "....",
#   "i" => "..",
#   "j" => ".---",
#   "k" => "-.-",
#   "l" => ".-..",
#   "m" => "--",
#   "n" => "-.",
#   "o" => "---",
#   "p" => ".--.",
#   "q" => "--.-",
#   "r" => ".-.",
#   "s" => "...",
#   "t" => "-",
#   "u" => "..-",
#   "v" => "...-",
#   "w" => ".--",
#   "x" => "-..-",
#   "y" => "-.--",
#   "z" => "--.."
# }
# final = []
# i = 0
# while i < str.length
#   if str[i] =~ /[a-z]/
#   final << morse_code[str[i]]
#   else
#   final << str[i]
#   end
#  i+=1
# end
# p final.join
# end

# morse_encode("Naveen is pretty")

# def wonky_coins(coin)
#   test = []
#   test << coin
#   test = test.flatten
#   test = wonky_coin_test(test)
#   total = 0
#     j = 0
#     while j < test.length
#       total = total + test[j]
#       j+=1
#     end
#     if total > 0
#       wonky_coins(test)
#     else
#     return test.length
#     end

# end

# def wonky_coin_test(coin)
#   i = 0
#   sub = []
#   while i < coin.length
#     if coin[i] != 0
#     sub << coin[i]/2 << coin[i]/3 << coin[i]/4
#     else
#       sub << coin[i]
#     end
#   i+=1
#   end
#   return sub
# end

# p wonky_coins(5)

# p [].length


# def ordered_vowels(str)
#   str = str.split
#   final = []
#   i = 0
#   while i < str.length
#     if ordered_vowel_word?(str[i]) == str[i]
#       final << str[i]
#     end
#     i+=1
#   end
# final.join(" ")
# end

# def ordered_vowel_word?(str)
# i = 0
# current_vowel = "a"
# last_vowel = "a"
#   while i < str.length
#     if str[i] =~ /[a-z]/
#       if str[i] =~ /[aeiou]/
#         current_vowel = str[i]

#       end
#       if last_vowel > current_vowel
#         return ""
#       else last_vowel = current_vowel
#       end
#     end
#     i+=1
#   end
#   return str
# end

# p ordered_vowels("this is a test of the vowel ordering system")









# def hash_offset(hash)
# i = 0
# #p hash[:c] = "banana"
# p hash[:b] = hash[:a]

# # while i < hash.length
# #   hash[0]



# end


# wrong_hash = { :a => "banana", :b => "cabbage", :c => "dental_floss", :d => "eel_sushi" }

# hash_offset(wrong_hash)


# def letter_count(str)

# alphabet = {
#     "a" => 0,
#     "b" => 0,
#     "c" => 0,
#     "d" => 0,
#     "e" => 0,
#     "f" => 0,
#     "g" => 0,
#     "h" => 0,
#     "i" => 0,
#     "j" => 0,
#     "k" => 0,
#     "l" => 0,
#     "m" => 0,
#     "n" => 0,
#     "o" => 0,
#     "p" => 0,
#     "q" => 0,
#     "r" => 0,
#     "s" => 0,
#     "t" => 0,
#     "u" => 0,
#     "v" => 0,
#     "w" => 0,
#     "x" => 0,
#     "y" => 0,
#     "z" => 0
# }

# i = 0
# while i < str.length
#   if str[i] =~ /[A-z]/
#     alphabet[str[i]]+=1
#   end
#   i+=1
# end

#   alphabet.select do |x,y|
#     y > 0
#   end

# end

# p letter_count("cats are fun")







# def letter_count(str)
# str = str.split("").sort
# final = []
# i = 0
#   while i < str.length
#     letter_count = 1
#     current_letter = str[i]
#     if str[i] == str[i+1]
#       while str[i] == str[i+1]
#         letter_count+=1
#         i+=1
#       end
#     end
#     final << current_letter
#     final << letter_count
#     i+=1
#   end
# return final.join
# end


# p letter_count("cats are fun")





# def no_repeats(start, stop)
# final = []
# while start <= stop
#   if no_repeat(start) == true
#     final << start
#   end
#   start+=1
# end
# return final
# end

# def no_repeat(year)
#  year = year.to_s
#  i = 0
#   while i < year.length
#     j = i + 1
#     while j <= year.length
#       if year[i] == year[j]
#         return false
#       end
#       j+=1
#     end
#     i+=1
#   end
# return true
# end
# p no_repeats(1234, 1234)






# def nearest_larger(arr, i)
# j = 1
#   while i-j >= 0 or j+i < arr.length
#     if i-j >= 0 and arr[i] < arr[i-j]
#       return (i - j)
#     elsif i+j < arr.length and arr[i] < arr[i+j]
#       return (i+j)
#     end
#     j+=1
#   end
# end

# p nearest_larger([2, 6, 9, 4, 8], 3)
















# def Division(num1, num2)
#   fnum1 = factors(num1).reverse
#   fnum2 = factors(num2).reverse
# i = 0
#   while i < fnum1.length
#   j = 0
#     while j < fnum2.length
#       if fnum1[i] == fnum2[j]
#         return fnum1[i]
#       else
#         j+=1
#       end
#     end
#     i+=1
#   end
# return "no factors"
# end

# def factors(num)
#   i = 1
#   factorz = []
#   while i <= num
#     if num%i == 0
#     factorz << i
#     end
#     i+=1
#   end
#   return factorz
# end

# p Division(7,3)









# def PalindromeTwo(str)
#   i = 0
#   final = []
#   final_two = []
#   while i < str.length
#     if str[i] =~ /[A-z]/
#      final << str[i]
#     end
#     i+=1
#   end
#   final.map do |x|
#    final_two << x.downcase
#   end
#   if final_two.reverse == final_two
#     return true
#   else
#     return false
#   end
# end

# p PalindromeTwo("A war at raaaarTarawa!")


# def PrimeMover(num)
# counter = 0
# i = 0
#   while counter < num
#     if prime(i) == true
#       counter+=1
#     end
#     i+=1
#   end
# return i-1

# end

# def prime(num)
#   if num < 2
#     return false
#   else
#   i = 2
#     while i < num
#       if num%i==0
#         return false
#       end
#       i+=1
#     end
#   end
#   return true
# end


# p PrimeMover(100)

# def RunLength(str)
#   test = str.split("")
#   i = 0
#   final = []
#   while i < test.length
#      total = 1
#     if test[i] == test[i+1]
#       while test[i] == test[i+1]
#       total+=1
#        i+=1
#       end
#     end
#     final << total
#     final << test[i]
#     i+=1
#   end
#   return final.join
# end



# p RunLength("wwwbbbw")










# def PrimeTime(num)
# i = 2
#   while i < num
#     if num%i == 0
#       return false
#     end
#     i+=1
#   end
# return true
# end

# p PrimeTime(110)

# def combine_arrays(arr,arr2)
#   final = []
#   i = 0
#   j = 0
#   while i+j < (arr.length + arr2.length)
#       if i == arr.length
#       final << arr2[j]
#       j+=1
#       elsif j == arr2.length
#         final << arr[i]
#         i+=1
#       elsif arr[i] > arr2[j]
#        final << arr2[j]
#        j+=1
#       else
#       final << arr[i]
#       i+=1
#       end
#   end
# p final
# end


# combine_arrays([1, 3, 5,7,8], [2, 4, 6,10])















# def puppy_golden_age(arr)

# arr.each_with_index do |x, y|

# arr.each_with_index do |w, t|
# p t
# end
# end

#   # arr.each_with_index do |element, index|
#   #   total = 0
#     # arr.each_with_index do |element2, index2|
#     #   total = element2 + totalx
#     # end
#   #end

# end




# puppy_golden_age([100, -101, 200, -3, 1000])






# def puppy_golden_age(arr)

# i = 0
# greatest = 0
# greatest_index = 0
# least_index = 0
#   while i < arr.length
#     j = i
#     total = 0
#     while j < arr.length
#       total = arr[j] + total
#       if total > greatest
#         greatest = total
#        greatest_index = j
#        least_index = i
#       end
#       j+=1
#     end
#     i+=1
#   end
# p [least_index, greatest_index]


# end
# puppy_golden_age([100, -101, 200, -3, 1000])






# def combine_arrays(arr,arr2, final=[])

#   if arr[0] < arr2[0]
#     low = arr
#     high = arr2
#   else
#     low = arr2
#     high = arr
#   end
#   finalarr = []
#   i = 0
#   j = 0
#   while i < low.length
#     while j < high.length
#       if low[i] && low[i] < high[j]
#       finalarr  << low[i]
#       i+=1
#       else
#       finalarr << high[j]
#       j+=1
#       end
#     end
#   end
#   return finalarr
# end


# p combine_arrays([1, 2], [3, 4, 6])
# p combine_arrays([1, 3, 5], [2, 4])
# p combine_arrays([1, 3, 5], [2, 4, 6])
























# def puppy_golden_age(arr)

# i = 0
# sums = []
# total = 0
# partial_sums = []
# partial_index = []
# greatest = 0
# final_index = 0
# start_index = 0
#   while i < arr.length
#     arr[i..(arr.length-1)].each_with_index do |s,y|
#       p "i = #{i} and y = #{y}"
#       total+=s
#       if total > greatest
#         greatest = total
#         start_index   =  i
#         final_index = y+i
#       partial_index << y
#       partial_sums << total
#       end
#     end
#   sums << total
#   total = 0
#   i+=1
#   end
# sums
# return [start_index, final_index]

# end
# p puppy_golden_age([100, -101, 200, -3, 1000])











# def prime(num)
# # if num <=1
# #   return false
# #else
#   i = 2
#   while i < num
#     if num%i == 0
#       return false
#     end
#     i+=1
#   end
# #end
#   return true
# end

#  p prime(-5)











# def exponent(num,pow)
#   total = 1
#   i = 1
#   if pow == 0
#     total = 1
#   else
#   while i <= pow
#     total*=num
#     i+=1
#   end
#   end
#   total
# end

# p method(:exponent).owner



# p exponent(3,4)

# def list_primes(num)
# i = 2
# primes = []
#   while i<=num
#     if prime(i) == true
#       primes << i
#     end
#     i+=1
#   end
# primes
# end


# def prime(num)
#   i = 2
#   while i < num
#     if num%i == 0
#     return false
#     end
#     i+=1
#   end
# return true
# end

# p list_primes(10000)




# def OfflineMinimum(arr)

# test_array = []
# i = 0
#   while i < arr.length
#     if arr[i] == "E"
#       min = arr[0]
#       arr[0..i]
#       min_index = 0
#       arr[0..i].each_with_index do |x,y|
#         if x =~ /[0-9]/ and x < min
#           min = x
#           min_index = y
#         end
#       end
#     test_array << min
#     arr[min_index] = "E"
#     end
#     i+=1
#   end
# return test_array.join
# end

# p OfflineMinimum(["6","5","1","2","E","3","4","E","2","E"])





# def MultiplicativePersistence(num)
# i = 0
# test = num.to_s.split("")
#   while test.length > 1
#     test = iterate(test)
#     i+=1
#   end
# return i,test
# end

# def iterate(arr)
#   total = 1
#   arr.each do |s|
#     total = total * s.to_i
#   end
# return total.to_s.split("")

# end

# p MultiplicativePersistence(10)











# def AdditivePersistence(num)
# i = 0
# test = num.to_s.split("")
#   while test.length > 1
#   test = iterate(test)
#   i+=1
#   end
#   test.join
#   return i
# end


# def iterate(arr)
#   total = 0
#   arr.each do |s|
#     total+=s.to_i
#   end
#   return total.to_s.split("")

# end


# p AdditivePersistence(10)





# def PowersofTwo(num)
# i = 0
# while 2**i < num
#   i+=1
# end
# p i
# if 2**i == num
#   return true
# else
#   return false
# end

# end

# p PowersofTwo(1025)













# def ThirdGreatest(arr)
#   largest_length = 0

#   final_lengths = []
# j = 0
# while j <= 2
#   i = 0
#   while i < arr.length
#     if arr[i].length > largest_length
#       largest_length = arr[i].length
#       biggest = arr[i]
#     end
#     i+=1
#   end
#   final_lengths << biggest
#   arr.delete(biggest)
#   largest_length = 0
#   biggest = ""
#   j+=1
# end

# p final_lengths[2]
# end

# p ThirdGreatest(["abc","defg","z","hijk"])














# def NumberAddition(str)
#   i = 0
#   number_array = []
#   temp = []
#   total = 0
#   while i < str.length
#     if str[i] =~ /[0-9]/
#       while str[i] =~ /[0-9]/
#       temp << str[i]
#       i+=1
#       end
#     number_array << temp.join.to_i
#     temp = []
#     end
#     i+=1
#   end
#   number_array.each do |x|
#     total+=x
#   end
# total
# end

# p NumberAddition("10 2One Number*100*")









# def DashInsert(str)
#   i = 0
#   final = ""
#   while i < str.length
#     if (str[i].to_i)%2 == 1 and (str[i+1].to_i)%2 == 1
#       final << str[i]
#       final << "-"
#     else
#       final << str[i]
#     end
#     i+=1
#   end
#   return final
# end

# p DashInsert("56730")



# def MeanMode(arr)
# arr.sort!
# final = 0
#   arr.each do |x|
#     final+=x
#   end
#   mean = final/(arr.length)
#   if arr.length%2 == 1
#     median = arr[((arr.length/2))]
#   else
#     median = (arr[arr.length/2] + arr[(arr.length/2)-1])/(2)
#   end
# i = 0
# mode = []
# counter = 0
# last_count = 0
#   while i < arr.length
#     if arr[i] == arr[i+1]
#       while arr[i] == arr[i+1]
#         counter+=1
#         i+=1
#       end
#       if counter > last_count
#         last_count = counter
#         mode = []
#         mode << arr[i]
#       elsif counter == last_count
#         mode << arr[i]
#       end
#       counter = 0
#     end
#     i+=1
#   end
#   mode_total = 0
#   mode.each do |s|
#     mode_total+=s
#   end
# if mode.length == 0
# return 0
# else
# real_mode = mode_total/mode.length
# end

# if real_mode == mean
#   return 1
# else
#   return 0
# end

# end
# p MeanMode([1,2,3])




# def DivisionStringfield(num1,num2)
# answer = (num1/num2).to_s.split("")
# p answer
# i = 1
# final = []
#   while i < answer.length+1
#   p final.unshift(answer[-i])
#     if i%3 == 0 and i == answer.length

#     elsif i%3 == 0
#       final.unshift(",")
#     end
#   i+=1
#   end
#   # if final.first == ","
#   #   final.shift
#   # end
# final.join
# end


# p DivisionStringfield(6874,67)



# def SecondGreatLow(arr)
# p test = arr.sort.uniq
# return "#{test[1]} #{test[-2]}"

# end

# p SecondGreatLow([7, 7, 90, 1000003])





# def LetterCountI(str)
#  test = str.split
# i = 0
# keep_i = 0
# old_counter = 0
#   while i < test.length
#      check = test[i].split("").sort
#      j = 0
#      counter = 0
#     while j < check.length
#       if check[j] == check[j+1]
#       counter+=1
#         while check[j] == check[j+1]
#         j+=1
#         end
#       end
#       j+=1
#     end
#     if counter > old_counter
#       old_counter = counter
#       keep_i = i
#     end
#     i+=1
#   end
# if old_counter == 0
#   return -1
# else
# return test[keep_i]
# end
# end

# p LetterCountI("i lied bfore")



# def ArithGeo(arr)
# geo = arr[1]/arr[0]

# if arr[1] - arr[0] == arr[2] - arr[1]
#   return "Arithmetic"
# elsif arr[0]*geo == arr[1] and arr[1]*geo == arr[2]
#   return "Geometric"
# else
#   return -1
# end

# end

# p ArithGeo([ 2,6,18,54])






# def Palindrome(str)
# if str.split.join == str.split.join.reverse
#   return true
# else
#   return false
# end

# end

# p Palindrome("eye")



# def ExOh(str)
# x = 0
# o = 0
#   i = 0
#   while i < str.length
#     if str[i] == "x"
#       x+=1
#     end
#     if str[i] == "o"
#       o+=1
#     end
#     i+=1
#   end
# if x == o
#   return true
# end
# return false
# end

# p ExOh("xxoooxo")




# def Wordcount(str)

# p str.split.length


# end

# Wordcount("pne 22 three")


# def VowelCount(str)
#   i = 0
#   counter = 0
#   while i < str.length
#     if str[i] =~ /[aeiou]/
#       counter+=1
#     end
#     i+=1
#   end
# counter
# end

# p VowelCount("coderbyte")




# def ABCheck(str)
#   i = 0
#   while i < str.length
#     if str[i] == "a"
#         if str[i+4] == "b" or (str[i-4] == "b" and i-3 >= 0)
#           return true
#         end
#     end
#     i+=1
#   end
# return false
# end

# p ABCheck("after badly")



# def AlphabetSoup(str)

# str.split("").sort!.join
# end

# p AlphabetSoup("hooplah")

# def TimeConvert(num)

#  return "#{num/60}:#{num%60}"


# end

# p TimeConvert(45)



# def CheckNums(num1,num2)

#   if num2 > num1
#     return true
#   elsif num2 == num1
#     return "-1"
#   else
#     return false
#   end

# end

# p CheckNums(66, 64)





# def SimpleSymbols(str)
# i = 0
#   while i < str.length
#     if str[i] =~ /[A-z]/
#       if i == 0 or i == str.length-1
#       return false
#       elsif str[i-1] != "+" and str[i+1] != "+"
#       return false
#       end
#     end
#     i+=1
#   end
#   return true
# end

# p SimpleSymbols("+d+=3=+s+")





# def letter_capitalize(str)

#   test = str.split.map(&:capitalize).join(" ")

# test
# end

# p letter_capitalize("argument goes here")



# def SimpleAdding(num)
# i = 0
# total = 0
# while i<=num
#   total+=i
#   i+=1
# end



#   return total

# end

# p SimpleAdding(140)


# def letter_changes(str,change)
#   final = []
#   check = []
#   str.split("").each do |x|
#     if x =~ /[A-z]/
#       if x.ord + change > 122
#         i = 0
#         while x.ord + change - i > 122
#         i+= 26
#         end
#         final << x.ord + change - i
#       else
#       final << x.ord + change
#       end
#     else
#     final << x.ord
#     end
#   end
# final.each do |x|
#   if x.chr =~ /[aeiou]/
#   check << x.chr.upcase
#   else
#   check << x.chr
#   end
# end
# p check.join
# end

# letter_changes("hello*3",10)

# 97 122




# def longest_word(str)

# check = []

#  test =  str.split
#  i = 0
# while i < test.length
#   final = []
#   test[i].each_char do |s|
#     if s =~ /[A-z]/
#     final << s
#     final.length
#     end
#   end
#     if final.length > check.length
#       check = final
#     end
# i+=1
# end

# check.join
# end

# p longest_word("longest word!!")



# def first_factorial(num)
# total = 1
# i = 1
#   while i <= num
#     total*=i
#     i+=1
#   end
# total
# end

# p first_factorial(8)

# def first_reverse(str)
#   i = 1
#   final = ""
# while i <= str.length
# final << str[-i]
# i+=1
# end

# p final

# end

# first_reverse("shit")









# def fizzbuzz(num)
#   i = 1
#   while i <=num
#     if i%3 == 0
#       puts "fizz"
#       puts i
#     end
#     if i%5 == 0
#       puts "buzz"
#       puts i
#     end
#     if i%3 == 0 and i%5==0
#       puts "fizzbuzz"
#       puts i
#     end
#     i+=1
#   end
# end

# fizzbuzz(100)











# def my_transpose(array)

#  final_final = []
#  i = 0
#   while i < array[0].length
#   j = 0
#   final = []
#     while j < array.length
#     final << array[j][i]
#     j+=1
#     end
#     final_final << final
#     i+=1
#   end
# p final_final
# end

# cols = [
#     [0, 3, 6],
#     [1, 4, 7],
#     [2, 5, 8]
#   ]

#   my_transpose(cols)




# def bubble_sort(array)
# j = 0
# while j < array.length
#   i = 0
#   while i < array.length-j
#     if array[i+1] == nil
#     elsif array[i].to_i > array[i+1].to_i
#       array[i+1], array[i] = array[i], array[i+1]
#     end
#     i+=1
#   end
# j+=1
# end

# array
# end

# p bubble_sort([5, 4, 3, 2, 1])



# def word_unscrambler(word,arr)
#  test = word.split("").sort
#  i = 0
#  final = []
# while i < arr.length
#   if arr[i].split("").sort == test
#    final << arr[i]
#   end
#   i+=1
# end
# final
# end

# p word_unscrambler("turn", ["numb", "turn", "runt", "nurt"])









# def morse_encode(string)
# final = ""
# morse_code = {
#   "a" => ".-",
#   "b" => "-...",
#   "c" => "-.-.",
#   "d" => "-..",
#   "e" => ".",
#   "f" => "..-.",
#   "g" => "--.",
#   "h" => "....",
#   "i" => "..",
#   "j" => ".---",
#   "k" => "-.-",
#   "l" => ".-..",
#   "m" => "--",
#   "n" => "-.",
#   "o" => "---",
#   "p" => ".--.",
#   "q" => "--.-",
#   "r" => ".-.",
#   "s" => "...",
#   "t" => "-",
#   "u" => "..-",
#   "v" => "...-",
#   "w" => ".--",
#   "x" => "-..-",
#   "y" => "-.--",
#   "z" => "--.."
# }

# i = 0
# while i < string.length
#   if string[i] == " "
#     final << " "
#   else
#   final << morse_code[string[i]]
#   final << " "
#   end
# i+=1
# end


# final.strip
# end

# p morse_encode("cat in the hat")








# def ordered_vowels(string)
#   string.split.each do |x|
#     if order?(x) == x
#     p  x
#     end
#   end
# end

# def order?(string)
# vowel_temp = ""
#   i = 0
#   while i < string.length
#     if string[i] =~ /[aeiou]/
#         if string[i] < vowel_temp
#           return ""
#         end
#       vowel_temp = string[i]
#     end
#     i+=1
#   end
#   return string
# end


# ordered_vowels("this")





# def letter_count(string)

# alphabet = {
#       "a" => 0,
#       "b" => 0,
#       "c" => 0,
#       "d" => 0,
#       "e" => 0,
#       "f" => 0,
#       "g" => 0,
#       "h" => 0,
#       "i" => 0,
#       "j" => 0,
#       "k" => 0,
#       "l" => 0,
#       "m" => 0,
#       "n" => 0,
#       "o" => 0,
#       "p" => 0,
#       "q" => 0,
#       "r" => 0,
#       "s" => 0,
#       "t" => 0,
#       "u" => 0,
#       "v" => 0,
#       "w" => 0,
#       "x" => 0,
#       "y" => 0,
#       "z" => 0
#     }
#  #p test = string.split.join.split("")
#   i = 0
#   while i < string.length
#       if alphabet.include?string[i]
#         alphabet[string[i]]+=1
#       end
#   i+=1
#   end
# alphabet.delete_if { |k,v| v == 0 }
# end


# p letter_count("cats are fun")




# def no_repeat?(year)
#   if year.to_s.split("").uniq == year.to_s.split("")
#     return true
#   else
#     return false
#   end
# end

# def no_repeats(start,stop)
# uniques = []
#   while start <= stop
#     if no_repeat?(start) == true
#       uniques << start
#     end
#       start+=1
#   end
# uniques
# end

# p no_repeats(1980,1987)




# def nearest_larger(arr,index)
# i = 1
# final_index = []
#   while i < arr.length
#     if arr[index-i] > arr[index]
#       final_index << index-i
#       break
#     elsif arr[index-i] > arr[index]
#       final_index << index-i
#       break
#     end
#     i+=1
#   end
# return final_index
# end

# p nearest_larger([2,6,9,4,8], 3)







# def greatest_common_factor(number1, number2)
# one_fact = find_factors(number1)
# two_fact = find_factors(number2)
# i = 1
#   while i-1 < one_fact.length
#     if two_fact.include?(one_fact[-i])

#       return one_fact[-i]
#     end
#   i+=1
#   end
# end

#   def find_factors(number)
#     factors = []
#     i = 1
#     while i <= number
#       if number%i == 0
#         factors << i
#       end
#     i+=1
#     end
#     factors
#   end



# p greatest_common_factor(16, 24)



# def palindrome?(string)
#   i = 0
#   while i < string.length
#     if string[i] != string[(string.length - 1) - i]
#       return false
#     end

#     i += 1
#   end
#    return true
# end

# def longest_palindrome(string)
# temp_pal = ""
# i = 0
#   while i < string.length
#     j = i+1
#     while j <= string.length
#       if palindrome?(string.slice(i,j)) == true
#        if string.slice(i,j).length > temp_pal.length
#        temp_pal = string.slice(i,j)
#        end
#       end
#       j+=1
#     end
#   i+=1
#   end
#   return temp_pal
# end

# p longest_palindrome("abcba")






# def num_repeats(string)
#  repeats = 0
#  test = string.split("").sort
#  i = 0
#   while i < test.length
#       if test[i] == test[i+1]
#         repeats+=1
#         while test[i] == test[i+1]
#           i+=1
#         end
#       end
#       i+=1
#   end
# return repeats
# end

# p num_repeats("a")




# def is_prime?(num)
# if num <=1
#   return false
# end
# i = 2
#   while i < num
#     if num%i == 0
#       return false
#     end
#     i+=1
#   end
# return true
# end



# def nth_prime(n)
# j = 0
# i = 2
#   while j < n
#     if is_prime?(i) == true
#       j+=1
#     end
#     i+=1
#   end
#   return i-1
# end

# p nth_prime(5)



# def is_prime?(number)
#   i = 2
# if number <= 1
#     return false
# else
#   while i < number
#     if number%i == 0
#       return false
#     end
#     i+=1
#   end
# end
#   return true
# end

# p is_prime?(9)




#   final = []
#   i = 0
# while i < string.length
#  final << string[positions[i]]
#  i+=1
# end
# p final
# end

# scramble_string("markov", [5, 3, 1, 4, 2, 0])





# def capitalize_words(string)
# arr = string.split
# final = []
#     arr.map do |s|
#      final << s[0].upcase.concat(s[1..-1])
#     end
#     final.join(" ")
# end

# capitalize_words("this is a sentence")




# def dasherize_number(num)
#   test = num.to_s.split("")
#   final = []
#   i = 0
#   while i < num.to_s.length
#     if test[i].to_i % 2 == 1
#       if final.last == "-"
#         final << test[i]
#         final << "-"
#       else
#         final << "-"
#         final << test[i]
#         final << "-"
#       end
#     else
#       final << test[i]
#     end
#     i+=1
#   end

#   if final.first == "-"
#     final.shift
#   end
#   if final.last == "-"
#     final.pop
#   end
#  p final.join
# end

# dasherize_number(33)






# def most_common_letter(string)
#  test = string.split("").sort
#  i = 0
#  times_common = 0
#  letter = nil
#  p "#{test.length} = test.length"
#   if test.length == 1
#   letter = test[0]
#   times_common = 1
#   else
#     while i < test.length
#       j = i + 1
#       while j <= test.length
#         if test[i] == test[j]
#           j+=1
#           p "#{j} = j"
#           p "#{i} = i"
#           p "j-i = #{j-i}"
#           if j-i > times_common
#             times_common = j-i
#             letter = test[i]
#           end
#         else
#         i+=1
#         end
#       end
#     end
#   end
# p [letter, times_common]
# end
# most_common_letter("abbab")

# def third_greatest(nums)

#   p nums.sort![-3]
# end

# third_greatest([2, 3, 7, 4])





# def is_power_of_two?(num)
#   i = 0
#   while 2**i < num
#     i+=1
#   end
#   if 2**i == num
#     return true
#   end
# return false
# end

# p is_power_of_two?(0)





# def two_sum(nums)
#   i = 0
#   final = []
#   while i < nums.length
#     j = i+1
#     while j < nums.length
#       if nums[i] + nums[j] == 0
#         final << i
#         final << j
#       end
#       j+=1
#     end
#     i+=1
#   end
# if final == []
#   return nil
# else
# return final
# end
# end

# p two_sum([1, 3, 5,-1,-5])



# def nearby_az(string)
#   i = 0
#   j = i + 1
#   while i < string.length
#     if string[i] == "a"
#       while j <= 3 + i
#         if string[j] == "z"
#           return true
#         else
#           j+=1
#         end
#       end
#     end
#     i+=1
#   end
# return false
# end

# p nearby_az("ab")





# def palindrome?(string)
#   if string == string.reverse
#     return true
#   else
#     return false
#   end
# end

# p palindrome?("z")






# def count_vowels(string)
#   i = 0
#   j = 0
#   while i < string.length
#     if string[i] =~ /[aeiou]/
#       j+=1
#     end
#     i+=1
#   end
# j
# end

# p count_vowels("cecilia")





# def time_conversion(minutes)
# hour =minutes/60
# min = minutes%60
# puts "#{hour}:#{min}"
# end


# time_conversion(360)






# def sum_nums(num)
#   i = 0
#   test = 0
#   while i <= num
#   test = test + i
#   i+=1
#   end
# p test
# end

# sum_nums(2)







# def longest_word(sentence)
# p test = sentence.split(" ")
# length = ""
# i = 0
#   while i < test.length
#     if test[i].length > length.length
#     length = test[i]
#     end
#     i+=1
#   end


# p length

# end

# longest_word("short longest short 1 err4r43r 3")






# def factorial(n)
#   if n == 0
#   final = 1
#   else
#   i = 1
#   final = 1
#     while i <= n
#       final = i * final
#       i+=1
#     end
#   end

# p final

# end

# factorial(4)





# def reverse(string)
#   final = []
#   i = string.length
#   while i >= 0
#     final << string[i]
#     i-=1
#   end
# final.join
# end
# p reverse("abcde")












# def MultiplicativePersistence(num)
#   i = 0
#   while num.to_s.length != 1
#   num = add_together(num)
#   i+=1
#   end
#   return i
# end


# def add_together(num)
# test = num.to_s.split("")
#   final = 1
#   test.each do |x|
#     final = final * x.to_i
#   end
# return final
# end


#p MultiplicativePersistence(2677889)










# def AdditivePersistence(num)
#   i = 0
#   while num.to_s.length != 1
#   num = add_together(num)
#   i+=1
#   end
#   return i
# end


# def add_together(num)
# test = num.to_s.split("")
#   final = 0
#   test.each do |x|
#     final = final + x.to_i
#   end
# return final
# end

# p AdditivePersistence(1)





# def PowersofTwo(num)
#   i = 0
#   until 2**i >= num
#     i+=1
#   end
#   if 2**i == num
#     return true
#   else
#     return false
#   end
# end

# p PowersofTwo(1024)













# def ThirdGreatest(strArr)
# big_arr = []
#   2.times do
#   largest = biggest(strArr)
#   big_arr << largest
#   strArr.delete_at(largest)
#   end

#   largest = biggest(strArr)
#  return strArr[largest]
# end



# def biggest(array)
#   i = 0
#   index = 0
#   largest = ""
#   while i < array.length
#     if array[i].length > largest.length
#     largest = array[i]
#     index = i
#     end
#     i+=1
#   end
# index
# end



# p ThirdGreatest(["hello", "world", "world"])





















# def NumberAddition(str)

# finalnum = 0
# i = 0
#   while i < str.length
#   temp = ""
#     while matchnumber(str[i]) == true
#     temp << str[i]
#     i+=1
#     end
#     i+=1
#     finalnum = finalnum + temp.to_i
#   end
# return finalnum
# end

# def matchnumber(index)
#   if index =~ /[0-9]/
#     return true
#   end
#   return false
# end

# p NumberAddition("1 1 1 1 yes")














# def SwapCase(str)
#   i = 0
#   final = ""
#   while i < str.length
#     if str[i] == str[i].downcase
#       final << str[i].upcase
#     else
#      final << str[i].downcase
#     end
#     i+=1
#   end
#   # code goes here
#   return final

# end

# p SwapCase("123gg))((")















# def DashInsert(str)

#   final = []
#   str.split("").each_with_index do |item,index|
#     if item.to_i % 2 != 0 and item.to_i != 0
#       p "first if and item = #{item} and index is #{index}"
#       if (str[index + 1]).to_i != nil and (str[index + 1]).to_i % 2 != 0 and (str[index + 1]).to_i != 0
#         p "second if"
#         p "(str[index + 1]) == #{(str[index + 1]).to_i}"
#         final << item
#         final << "-"
#       else
#         final << item
#       end
#     else
#       p "else"
#     final << item
#     end
#   end
#   return final.join
# end

# p DashInsert("56730")

# shit = "91"


# shit.split("").each_with_index do |x, y|
#   p x.to_s + " " + (y+1).to_s + " "
# end


















# def MeanMode(arr)
#   adder = 0
#   arr.each do |x|
#   adder = x + adder
#   end
#   mean = adder/arr.length
#     if arr.length == 2
#     median = (arr[0] + arr[1])/2
#     elsif arr.length%2 == 0
#      median = (arr[arr.length/2] + arr[((arr.length/2)+1)])/2
#     else
#     median = arr[arr.length/2]
#     end
#     if mean == median
#       return 1
#     else
#       return 0
#     end
# end

# p MeanMode [10,10]







# def CountingMinutesI(str)
#   split_times = str.split("-")
#     time1 = split_times[0]
#     time2 = split_times[1]
#   # if time1.split(":")[0]
#     if time1.include? "pm"
#     pm1 = (time1.split(":")[0].to_i + 12).to_s
#     time1 = time1.split(":")
#     time1[0] = pm1
#     time1 = time1.join(":")
#     end
#     if time2.include? "pm"
#     pm2 = (time2.split(":")[0].to_i + 12).to_s
#     time2 = time2.split(":")
#     time2[0] = pm2
#     time2 = time2.join(":")
#     end





# if time1.include? "am" and time2.include? "am"
#   if time1.split(":")[0] > time2.split(":")[0]










#   if time1.include? "am"
#   p time1 = time1.gsub(/[am]/, "").split(":")
#    #time1 = time1.split(":")
#   elsif time1.include? "pm"
#     time1 = time1.gsub(/[pm]/, "")
#     time1 = time1.split(":")
#     time1[0] = time1[0].to_i + 12
#   end
#   if time2.include? "am"
#     time2 = time2.gsub(/[am]/, "")
#     time2 = time2.split(":")
#   elsif
#     time2 = time2.gsub(/[pm]/, "")
#     time2 = time2.split(":")
#     time2[0] = time2[0].to_i + 12
#   end
#   # if time2[0].to_i < time1[0].to_i
#   #   time2[0] = time2[0].to_i + 12
#   # end
#   p time2[0]
#   p time1[0]
# #   hour = time1[0].to_i - time2[0].to_i
# #   min = time1[1].to_i - time2[1].to_i
# # p (hour*60) #.to_s.concat(min)

# end

#CountingMinutesI("1:00pm-11:00pm")





















# def DivisionStringified(num1,num2)
#   div = num1/num2
#   test = div.to_s
#   final = []
#   #test.reverse!
#   i = -1
#   while -i <= test.length
#     if (i)%3 == 0
#       p final << test[i]
#       final << ","
#     else
#   p final << test[i]
#     end
#   i-=1
#   end
#   final.join.reverse
# end



# p DivisionStringified(37,37)














# def DivisionStringified(num1,num2)
#   div = num1/num2
#   test = div.to_s
#   final = []
#   #test.reverse!
#   i = 0
#   while i < test.length
#     if (i)%3 == 0 and i != 0
#       final << ","
#     end
#   p final << test[i]
#   i+=1
#   end
#   final.join #.reverse
# end



# p DivisionStringified(123456789,10000)





# def ArithGeo(arr)

#   if (arr[1] - arr[0] == arr[3] - arr[2])
#     return "geometric"
#   elsif (arr[3] / arr[2]) == (arr[1] / arr[0])
#     return "arithmetic"
#   else
#     return "-1"
#   end


# end

# p ArithGeo([2,-6, 18, -54])
