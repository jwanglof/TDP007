# -*- coding: utf-8 -*-
#!/usr/bin/env ruby

def weather(filename)
  file = IO.readlines(filename)
  weatherHash = Hash.new

  (file.length).times do |e|
    line = file[e].split(" ")

    # A slight difference from the football exercise
    if line[0] =~ /\d/
      weatherHash[line[0]] = line[2].to_i-line[1].to_i
    end
  end
  
  weatherHash = weatherHash.sort { |a, b| a[1] <=> b[1] }
  puts "The lowest difference between the lowest and highest temperature in 24-hour window is day number: #{weatherHash[-1][0]}, that had a difference of #{weatherHash[-1][1]} degrees"
  puts "-"*20
  puts "A sorted list with the lowest to the highest difference in daily temperature."
  puts "Day: #{' '*16} Difference:"
  weatherHash.each do |e|
    tabLength = 20 - e[0].length
    puts "#{e[0]} #{' '*tabLength} #{e[1]}"
  end

  return nil
end
