##Uppgift 5
class PersonName
  attr_reader :name, :surname #genererar get och set
  attr_accessor :fullname

  def initialize(name, surname)
    @name = name
    @surname = surname
  end
  
  def fullname
    name+ ' ' +surname
  end

  def fullname=(fullname)
    temp_list = fullname.split(' ')
    @name = temp_list[0..-2].join(' ')
    @surname = temp_list.last  
  end
end

##Uppgift 6
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
