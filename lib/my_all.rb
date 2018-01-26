require 'pry'

def my_all?(collection)
  if block_given?
    i = 0
    result = true
    while i < collection.length
      if yield(collection[i])
        i += 1
      else
        result = false
        break
      end
    end
    result
  else
    throw SyntaxError
  end
end
