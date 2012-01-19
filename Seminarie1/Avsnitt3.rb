#############
# Uppgift 7 #
#############

class Integer
  def fib
    return self if (0..1).include?(self)
    fibonacci = [0, 1]
    (2..self).each do
      fibonacci << fibonacci[-1]+fibonacci[-2]
    end
    return fibonacci[-1]
  end
end

#############
# Uppgift 8 #
#############

class String
  def acronym
    s_split = self.split(" ")
    s_join = ""
    s_split.each do | x | s_join += x[0].upcase end
    return s_join
  end
end

#############
# Uppgift 9 #
#############

class Array
  def rotate_left
    
  end
end
