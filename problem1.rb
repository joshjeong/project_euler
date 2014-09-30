# If we list all the natural numbers below 10 that are 
# multiples of 3 or 5, we get 3, 5, 6 and 9. 
# The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def find_multiples(number)
  multiples_arr = []
  i = 0
  while i < number
    if i%3==0 || i %5==0
      multiples_arr<<i
    end
    i+=1
  end
  return multiples_arr
end

def sum(number)
  array = find_multiples(number)
  array.inject { |sum, n| sum + n }
end


p sum(1000)