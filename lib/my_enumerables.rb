module Enumerable
  # Your code goes here
  def my_each_with_index
    index = 0
    for element in self
      yield(element, index)
      index += 1
    end 
  end

  def my_select
    result = []
    for element in self
      result << element if yield(element)
    end
    result
  end

  def my_all?
    for element in self
      return false unless yield(element)
    end
    true
  end
  
  def my_any?
    for element in self
      return true if yield(element)
    end
    false
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    for element in self
      yield(element)
    end
  end
end
