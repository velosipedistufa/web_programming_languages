class Sucher
	def self.minmax(anfang, ende, &met)
		(anfang..ende).step(10**-2).map(&met).minmax
	end
end