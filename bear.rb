
# finds the file fighter.rb
require_relative 'fighter' 

class Bear < Fighter
	def initialize (name, health, power)
		super(name, health, power)
	end
	def attack(enemy)
		puts "RAWR!"
		enemy.lose_health(self.power, enemy.health)
	end
end

# ninja = Fighter.new("Ninja", 100, 10)
# yogi = Bear.new("Yogi", 100, 12)
# puts yogi.attack(ninja)