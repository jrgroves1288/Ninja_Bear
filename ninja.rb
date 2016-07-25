

require_relative 'fighter'

class Ninja < Fighter
	def initialize (name, health, power)
		super(name, health, power)
	end
	def attack(enemy)
		puts "...silence"
		2.times do
			enemy.lose_health(self.power, enemy.health)
		end
	end
end

