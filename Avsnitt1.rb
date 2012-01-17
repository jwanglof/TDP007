#############
# Uppgift 1 #
#############

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

#############
# Uppgift 3 #
#############

def longest_string(given_array)
  length = 0
  longest = ""

  given_array.each {
    | e |
    if e.length > length
      length = e.length
      longest = e
    end
  }
  return longest
end

#############
# Uppgift 4 #
#############

