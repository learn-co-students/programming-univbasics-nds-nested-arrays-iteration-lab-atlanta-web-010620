def join_ingredients(src)
  
  new_array = []
  
  i = 0
  
  while i < src.length do
    element = src[i]
  new_array << "I love #{element[0]} and #{element[1]} on my pizza"
  i += 1
  
end
new_array
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  
  large_number = []
  
  i = 0
  
  while i < src.length do
    large_number << (src[i][0] > src[i][1] ? src[i][0] : src[i][1])
    i += 1
  
end
large_number
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  
  sum = 0
  i = 0
  while i < src.length do
    if (src[i][0] % 2 == 0) && (src[i][1] % 2 == 0)
      sum += (src[i][0] + src[i][1])
    end
    i += 1
  end
  sum
end
