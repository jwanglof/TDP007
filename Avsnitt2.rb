#############
# Uppgift 5 #
#############

class PersonName
  def initialize(firstname, surname)
    @name = firstname
    @surname = surname
  end

  attr_accessor :name, :surname

  def fullname
    return "#{@surname} #{@name}"
  end

  def fullname=(fullname)
    @name, @surname = fullname.split(" ")
  end
end

#############
# Uppgift 6 #
#############

require 'date'

class Person < PersonName
  def initialize(firstname = "", surname = "", age = 0)
    super(firstname, surname)
    @age = age
  end

  attr_accessor :age

  def birthyear
    return Time.now.year - age
  end

  def birthyear=(birthyear)
    @age = Time.now.year - birthyear
  end

  def age=(age)
    @age = age
  end
end
