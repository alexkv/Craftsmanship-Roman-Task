#!/usr/bin/ruby

require 'roman'

roman = Roman.new ARGV[0].to_i
number = roman.lucky
puts number
