require 'pry'

def my_all?(collection)
  if block_given?
    i = 0
    while i < collection.length
      if yield(collection[i])
        i += 1
      else
        break
        false
      end
    end
    true
  else
    throw SyntaxError
  end
end
