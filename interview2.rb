#### Unique Items ####
# Write a function that takes in an array. It should return a new array
# containing only the elements that were unique in the original array.
#
# For example:
# ary = [1, 5, 5, 7, 16, 8, 1, 8]
# unique = unique_items(ary)
# unique # => [7, 16]

# def unique(arr)
#   i = 0
#   arr.sort!
#   final = []
#   final_final =[]
#   while i < arr.length
#     num = 1
#     if arr[i] == arr[i+1]
#       while arr[i] == arr[i+1]
#         num+=1
#         i+=1
#       end
#     end

#     final << num.to_s
#     final << arr[i]
#     i+=1
#   end
# i = 0
# while i < final.length
#   if final[i] == "1"
#     final_final << final[i+1]
#   end
#   i+=1
# end
# p final_final
# end

# unique([1, 5, 5, 7, 16, 8, 1, 8])












# def fizzbuzz(num)

# while num != 0
#   if num%5 == 0 and num%3==0
#     puts "fizzbuzz #{num}"
#   elsif num%5 == 0
#     puts "fizz #{num}"
#   elsif num%3 == 0
#     puts "buzz #{num}"
#   else
#     puts "shit #{num}"
#   end
#   num-=1
# end


# end

# fizzbuzz(100)




# def ordered_word?(str)
#   i = 0
#   while i < str.length
#     if str[i+1] and str[i] == str[i+1]

#     elsif str[i+1] and (str[i] <=> str[i+1]) != -1
#       return false
#     end
#     i+=1
#   end
# return true
# end



# p ordered_word?("aa")
# p ordered_word?("amz")
# p ordered_word?("zma")




# def encrypt(str)
#   arr = str.split("")
#   i = 0
#   inter = []
#   letter = ""
#   final = []
#   times = 1
#   while i < arr.length
#     letter = arr[i]
#     if arr[i] == arr[i+1]
#       while arr[i] == arr[i+1]
#         times+=1
#         i+=1
#       end
#     end
#     inter << letter
#     inter << times
#     final << inter
#     inter = []
#     times = 1
#     i+=1
#   end
# p final
# end

# encrypt("aabbccaa")


# def one_off_words(str, word_list)
#   i = 0
# test = []
# final = []
#   while i < word_list.length
#     test = []
#     test = word_list[i].split("")
#     if word_checker?(str, test)
#       final << test.join
#     end
#     i+=1
#   end
# return final
# end

# def word_checker?(str, test)
#   i = 0
#   miss = 0
#   if str.length != test.length
#     return false
#   end
#   while i < str.length
#     if str[i] != test[i]
#       miss+=1
#     end
#     if miss > 1
#       return false
#     end
#     i+=1
#   end
# return true
# end

# WORDS = ["door", "moot", "boot" , "boots"]
# p one_off_words("moor", WORDS)












# def num_repeats(string)
# string = string.split("").sort
# i = 0
# repeats = 0
# while i < string.length
#   if string[i] == string[i+1]
#     repeats+=1
#     while string[i] == string[i+1]
#       i+=1
#     end
#   end
#   i+=1
# end
# return repeats
# end

# p num_repeats("abcde")









# def greatest_common_factor(num1, num2)
# if num1 > num2
#   temp = num2
#   num2 = num1
#   num1 = temp
# end

#   i = 1
#   num1_fact = []
#   num2_fact = []
#   while i <= num1
#     if num1%i == 0
#       num1_fact << i
#     end
#     i+=1
#   end

# i = 1
# while i <= num2
#     if num2%i == 0
#       num2_fact << i
#     end
#   i+=1
# end

# i = 0
# while i < num2_fact.length
#   j = 0
#   while j < num1_fact.length
#     if num2_fact[-1-i] == num1_fact[-1-j]
#       return num2_fact[-1-i]
#     end
#     j+=1
#   end
#   i+=1
# end

# end

# p greatest_common_factor(9, 3)


# def longest_palindrome(string)
#   i = 0
#   longest = ""
#   while i < string.length
#     j = i + 1
#     while j < string.length
#       if palindrome?(string[i..j])
#         if longest.length <= string[i..j].length
#          longest = string[i..j]
#         end
#       end
#       j+=1
#     end
#     i+=1
#   end
#   return longest
# end



# def palindrome?(string)
# string = string.split("")
# i = 1
# while i < string.length
#   if string[i-1] != string[-i]
#     return false
#   end
#   i+=1
# end
# return true
# end

# p longest_palindrome("abcbdeffe")






# def crazy_sum(arr)
#   i = 0
#   total = 0
#   while i < arr.length
#     total = arr[i]*i + total
#     i+=1
#   end
# return total
# end

# p crazy_sum([2,3,5])

# def square_nums(num)
#   i = 0
#   final = 0
#   while i < num
#     if i*i < num
#       final = i
#     end
#     i+=1
#   end
# return final
# end

# p square_nums(25)

# def crazy_nums(num)
#   final = []
# i = 0
#   while i < num
#     if i%3 == 0 and i%5 == 0

#     elsif i%5 == 0
#       final << i
#     elsif i%3 == 0
#       final << i
#     end
#     i+=1
#   end
# return final
# end

# p crazy_nums(20)
