# Your Code Here
def map(array)
  new = []
  i = 0 
  while i<array.length do
  new.push(yield(array[i]))
  i +=1   
  end 
  new
end
  
def reduce(array, starting_point=nil)
  if starting_point 
    sum = starting_point
    i = 0 
  else 
    sum = array[0]
    i = 1
  end
  while i<array.length do 
    sum = yield(num1, array[i])
    i +=1 
  end
  total
end
  