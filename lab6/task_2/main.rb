class Processor
	def self.elementaly(x)
		Enumerator::Lazy.new(0..Float::INFINITY) do |anarray, n|
			anarray << ((-1)**n)*((x**(2*n+1))/(Math.gamma((2*n+1)+1)))
		end
	end
	def self.sin(x)
		return elementaly(x).take_while { |elem| elem.abs >= 1e-4 }.reduce(:+)
	end
end