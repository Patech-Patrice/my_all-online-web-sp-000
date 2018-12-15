require 'pry'

def my_all?(collection) # does not call on all?
i = 0
  block_return_values = [] #can handle an empty collection
  while i < collection.length
    block_return_values << yield(collection[i])
    i = i + 1
  end
 
  if block_return_values.include?(false)
    false
  else
    true
  end
end

