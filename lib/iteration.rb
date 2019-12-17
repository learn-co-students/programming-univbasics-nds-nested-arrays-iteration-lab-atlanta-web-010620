def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  inner_array = []
  row_index = 0
  while row_index <= 2 do
    inner_array.push("I love #{src[row_index][0]} and #{src[row_index][1]} on my pizza")
  row_index += 1
end
  return inner_array
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  larger_array = []
  row_index = 0
  while row_index < src.count
  if src[row_index][0] > src[row_index][1]
    larger_array.push(src[row_index][0])
  else
    larger_array.push(src[row_index][1])
  end
    row_index += 1
  end
  return larger_array
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  even_pairs = []
  row_index = 0
  total = 0
  while row_index < src.count
  if (src[row_index][0] % 2 == 0) && (src[row_index][1] % 2 == 0)
    total += src[row_index][0] + src[row_index][1]
  end
  row_index += 1
end
  return total
end
