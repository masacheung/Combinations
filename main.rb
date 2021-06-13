# Soluation 1
# def combinations (arr)
#   ans = []
#   count = 0
#   s_count = 1
#   n_arr = []
#   while count + 1 < arr.length
#     while s_count < arr.length
#       n_arr << arr[count] 
#       n_arr << arr[s_count]
#       ans << n_arr
#       n_arr = []
#       s_count += 1
#     end
#     count +=1
#     s_count = count + 1
#   end
#   return ans
# end

# Soluation 2
# def combinations(arr)
#   ans = []
#   n_arr = []
#   arr.each_with_index do |a, ai|
#     arr.each_with_index do |b, bi|
#       if bi > ai
#         n_arr << a
#         n_arr << b
#         ans << n_arr
#         n_arr = []
#       end
#     end
#   end
#   return ans
# end

# Soluation 3
def combinations(arr)
  ans = []
  arr.each_with_index do |a, ai|
    arr.each_with_index do |b, bi|
      if bi > ai
        ans << [a, b]
      end
    end
  end
  return ans
end

print combinations(["a", "b", "c"]) # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts
print combinations([0, 1, 2, 3]) # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
