require 'rubygems'
require 'Bitly'


bitly = Bitly.new("tmh176", "R_4f12155df9968a5880254f37a0bf9e07")

my_home = bitly.shorten('http://www.thomashughes.info')

puts "Here is a shortened link to my personal home page:"
puts my_home.short_url

puts "\n"
puts "Here is all bitly's information about that URL"
puts my_home.info


other_url = bitly.expand("LpWyHz")

puts "And here is the expanded version of a bitly I found on Twitter"
puts other_url.long_url

