# @param {Integer[]} nums
# @param {Integer} target
# # @return {Integer[]}
# def two_sum(nums, target)
#   answer = {}
#   nums.each_with_index do |num, i|
#     answer[num] = i
#     if answer[target - num]
#       return [answer[target - num], i]
#     end
#   end
# end

# p two_sum([2, 11, 15, 7], 9)

# results = ''
  # nums.each_with_index do |num1, i1|
    # nums[i1 + 1].each do |num2, i2|
      # if i2 > i1
        # if num1 + num2 == target
          # return [i1, i2]
        # end
      # end
    # end
  # end

def rot13(message)
  alpha = ('a'..'z').to_a
  ret_str = ''
  message.each_char do |char|
    if alpha.include?(char.downcase)
      index = (alpha.index(char.downcase) + 13) % 26
      ret_str += alpha[index]
    else
      ret_str += char
    end
  end
  p ret_str
  ret_str
end

p rot13("EBG13 rknzcyr.")