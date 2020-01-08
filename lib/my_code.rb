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
  total = 0 
  if starting_point 
    num1 = starting_point
    i = 0 
  else 
    num1 = array[0]
    i = 1
  end
  while i<array.length do 
    yield(num1)
    i +=1 
  end
  yield(total)
  total
end
  