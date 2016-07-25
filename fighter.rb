class Fighter
	attr_reader :name
	attr_accessor :health, :power

	def initialize(name, health, power)
		@name = name #with @, you can use the variables in all the methods
		@health = health
		@power = power
	end
	def attack(enemy)
		enemy.lose_health(self.power, enemy.health)
	end
	def lose_health(enemy_power, health)
		self.health -= enemy_power
	end

end

# ali = Fighter.new("Muhammed Ali", 100, 20)
# tyson = Fighter.new("Mike Tyson", 100, 10)

# puts ali.attack(tyson)
# puts tyson.inspect
# puts tyson.attack(ali)
# puts ali.inspect