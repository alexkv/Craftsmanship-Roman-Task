
$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'roman'

class RomanTest < Test::Unit::TestCase

	def setup
	end

	def test
		roman = Roman.new 5
		assert_nothing_raise{
			roman.lucky
		}
	end
	
	def test_lucky
		roman = Roman.new 5,3
		number = roman.lucky
		assert_equal 1, number
	end
	
	def test_one
		roman = Roman.new 1
		
		assert_equal 40, roman.persons_count
		number = roman.lucky
		
		assert_equal 40, number
		assert_equal 1, roman.persons_count
	end

	def test_circle
		roman = Roman.new 40
		roman.circule
		assert_equal 39, roman.persons_count 

		roman = Roman.new 20
		roman.circule
		assert_equal 38, roman.persons_count 
	end
	
	def test_circle2
		roman = Roman.new 3, 7
		roman.circule
		assert_equal [7,1,2,4,5], roman.persons
	end
	
	def test_circle3
		roman = Roman.new 4, 3
		roman.circule
		assert_equal [2,3], roman.persons

		roman = Roman.new 5, 3
		roman.circule
		assert_equal [3,1], roman.persons
	end
	
	
	def test_trash
		ar = [1,2,8,4]
		ar.delete 8
		assert_equal [1,2,4], ar 
		
		
		assert_equal (4.9).to_i, 4
	end

end
