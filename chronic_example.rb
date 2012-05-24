require 'rubygems'
require 'Chronic'

def chronic_demo(time_text)
	puts "\n"

	if Chronic.parse(time_text) == nil # nil is returned if Chronic can't parse your text
		puts "Chronic doesn't like your input: " + time_text
	else
		puts "Input text is: " + time_text
		puts Chronic.parse(time_text)
		puts Chronic.parse(time_text).asctime
	end

end

chronic_demo("tomorrow")

chronic_demo("Saturday noon")

chronic_demo("yesterday")

chronic_demo("Monday of last week")

chronic_demo("day before yesterday")

chronic_demo("last Sunday in 2011")

chronic_demo("3 days from yesterday")

chronic_demo("first wednesday of next month")

chronic_demo("first Monday of 2013")

chronic_demo("3 hours from now")