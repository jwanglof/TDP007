##Uppgift 7
class Integer
  def fib
    if self < 0
      return 'undefined'
    end
    self < 2? self : (self-1).fib + (self-2).fib
  end
end


##Uppgift 8
class String
  def acronym
    s_split = self.split(" ")
    s_join = ""
    s_split.each do | x | s_join += x[0].upcase end
    return s_join
  end
end

##Uppgift 9
class Array
  def rotate_left(n = 1)
    empty_array = Array.new
    reversed_array = self.rotate(n)

    (reversed_array).each do |i|
      empty_array.push(i)
    end

    return empty_array
  end
end
