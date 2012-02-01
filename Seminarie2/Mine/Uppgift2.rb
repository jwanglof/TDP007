# -*- coding: utf-8 -*-
#!/usr/bin/env ruby

require 'open-uri'
require 'nokogiri'

source = File.open("events.html")
doc = Nokogiri::HTML(source)
source.close

hashDescription = Hash.new
hashWhen = Hash.new

i = 0
doc.xpath('///div[@class="vevent"]/table/tr/td[@class="description"]').each do |e|
  hashDescription[i] = e.text
  i += 1
end

i = 0
doc.xpath('///div[@class="vevent"]/table/tr/td/table/tr/td/span').each do |e|
  hashWhen[i] = e.text
  i += 1
end

# Loop all the hashes
(hashDescription.length).times do |e|
  puts "When: #{hashWhen[e]} \n Description: #{hashDescription[e]}"
  puts "\n"
end
