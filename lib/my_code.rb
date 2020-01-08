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
  i = starting_point
  while i<array.length do 
    total += array[i]
    yield(total)
    i +=1 
  end
  total
end
  