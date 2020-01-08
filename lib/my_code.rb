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
    i = starting_point
  else
    i = 0 
  end
  while i<array.length do 
    total += array[i]
    yield(total)
    i +=1 
  end
  total
end
  