##Uppgift 1
def n_times(n)
  n.times { yield }
  return n
end

class Repeat
  def initialize(n)
    @n = n
  end

  def each()
    @n.times { yield }
    return @n
  end
end

##Uppgift 2:
def faculty(n)
  faculty = (1..n).inject{|total,x| total * x}
end

##Uppgift 3:
def longest_string(array_str)
  longest_str = array_str[0]
  for i in 1..array_str.length-1
    if longest_str.length < array_str[i].length
      longest_str = array_str[i]
    end
  end
  return longest_str
end

##Upgift 4:
def find_it(array_str, &block)
  temp_str = array_str[0]
  for i in 1..array_str.length-2
    if block.call(array_str[i], array_str[i+1])
      temp_str = array_str[i]
    end
  end
  return temp_str
end
