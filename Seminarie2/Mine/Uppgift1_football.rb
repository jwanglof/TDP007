#!/usr/bin/env ruby
# -*- coding: utf-8 -*-


def goals(filename)
  file = IO.readlines(filename)
  teamHash = Hash.new

  (file.length).times do |e|
    line = file[e].split(" ")
    
    # Check too see that it only adds teams and not anything else
    # It will add the team to a hash with an int attached
    # I.e. "Arsenal"=>43
    if line[1] =~ /^[A-Za-z]{3,}+/
      teamHash[line[1]] = line[6].to_i-line[8].to_i
    end
  end

  teamHash = teamHash.sort { |a, b| a[1] <=> b[1] }
  puts "The team with the least difference in goal is #{teamHash[-1][0]}"
  puts "-"*20
  puts "A list with the teams sorted by goal difference:"
  teamHash.reverse.each do |e|
    # Just to make the list a little prettier
    spaceLength = 18 - e[0].length
    puts "#{e[0]} #{' '*spaceLength} #{e[1]}"
  end

  return nil
end
