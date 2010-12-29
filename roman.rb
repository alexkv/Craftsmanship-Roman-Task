class Roman

	def initialize n, total = 40
		@n = n
		@total = total
		@persons = (1..total).to_a
	end


	def lucky
		while persons_count != 1
			circule
		end

		return @persons[0]
	end


	def circule
		alife_persons = []
		other_persons = @persons.clone

		@persons.each_index{|index|
			return if one_person_remained? other_persons, alife_persons

			other_persons.delete @persons[index]

			if should_be_killed? index
				break if other_persons.size < @n 
			else
				alife_persons << @persons[index] 
			end
		}

		@persons = other_persons + alife_persons
	end


	def persons_count
		@persons.size
	end


	def persons
		@persons
	end


	private

	def one_person_remained? other_persons, alife_persons 
		result_persons = other_persons + alife_persons

		if result_persons.size == 1
			@persons = result_persons
			return true
		end

		return false
	end


	def should_be_killed? index
		((index + offset + 1) % @n) == 0
	end


	def offset
		size = @persons.size
		(size < @n) ? (@n / size).to_i * size : 0;
	end


end

