# Define a method sum which takes an array of integers as an argument and 
# returns the sum of its elements. For an empty array it should return zero.

def sum(array)
  return 0 if array.empty?
  array.inject(:+)
end

# Define a method max_2_sum which takes an array of integers as an argument and
# returns the sum of its two largest elements. For an empty array it should
# return zero. For an array with just one element, it should return that element.

def max_2_sum(ar)
  return 0 if ar.empty?
  return ar[0] if ar.length == 1
  sar = ar.sort {|x,y| y <=> x }
  return sar[0] + sar[1]
end

# Define a method sum_to_n? which takes an array of integers and an additional 
# integer, n, as arguments and returns true if any two distinct elements in the
# array of integers sum to n. An empty array or single element array should 
# both return false.

def sum_to_n?(ar, n)
  return false if ar.empty? or ar.count == 1
  ar.uniq.permutation(2).any? { |a| a.first+a.last == n }
end

def test_sum
  raise 'sum([]) != 0' unless sum([]) == 0
  raise 'sum([1, 2, 3]) != 6' unless sum([1, 2, 3]) == 6
  raise 'sum([1, 2, 3, 4]) != 6' unless sum([1, 2, 3, 4]) == 10
end

test_sum

def test_max_2_sum
  raise 'max_2_sum([1, 2, 3]) != 5' unless max_2_sum([1, 2, 3]) == 5
  raise 'max_2_sum([11, 22, 33]) != 55' unless max_2_sum([11, 22, 33]) == 55
  raise 'max_2_sum([]) != 0' unless max_2_sum([]) == 0
  raise 'max_2_sum([22]) != 22' unless max_2_sum([22]) == 22
end

test_max_2_sum

def test_sum_to_n
    raise "sum_to_n?([], 6) not false" if sum_to_n?([], 6)
    raise "sum_to_n?([1], 6) not false" if sum_to_n?([1], 6)
    raise "sum_to_n?([3, 5, 3, 1], 6) not true" unless sum_to_n?([3, 5, 3, 1], 6)
    raise "sum_to_n?([3, 5, 3, 2], 6) not false" if sum_to_n?([3, 5, 3, 2], 6)
    raise "sum_to_n?([1, 5, 3, 0], 7) not false" if sum_to_n?([1, 5, 3, 0], 7)
    # puts "test_sum_to_n passed"
end
    
test_sum_to_n