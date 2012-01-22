##Uppgift 10
def get_username(str)
  pattern = /(username:\s*(\w+))/i
  if str =~ pattern
    match = pattern.match(str)
    return match[0]
  else
    return false
  end
end

##Uppgift 11
require 'open-uri.rb'

def tagnames(doc)
  html = open(doc) { |f| f.read }
  return html.scan(/<\/?(\w+)/).map {|x|x[0]}.uniq
end

##Uppgift 12
def regnr(str)
  pattern = /([a-h]|[j-p]|[r-u]|[w-z]){3}[\d]{3}/i
  if str =~ pattern
    match = pattern.match(str)
    return match[0]
  else
    return false
  end
end

