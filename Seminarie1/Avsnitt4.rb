##############
# Uppgift 10 #
##############

def get_username(str)
  pattern = /(username: (\w+))/i
  if str =~ pattern
    match = pattern.match(str)
    return match[0]
  else
    return false
  end
end

##############
# Uppgift 11 #
##############

#require 'open-uri.rb'
#
#def tag_names(var)
#  l = []
#  if var =~ /<\w+>.<\/\w+>/
#  if var =~ /<\w+>/
#    puts var
#  else
#    puts 2
#  end
#end

##############
# Uppgift 12 #
##############

def regnr(str)
  pattern = /([^iqv^IQV]{3}[0-9]{3})/
  if str =~ pattern
    match = pattern.match(str)
    return match[0]
  else
    return false
  end
end
