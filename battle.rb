
# $x = 0 is global variable
# @x = 0 is instanced variable
# x = 0 is local variable "What happens in Vegas (method) stays in Vegas

require_relative 'bear'
require_relative 'ninja'

class Battle
	attr_reader :fighter1, :fighter2
	def initialize(fighter1, fighter2)
		@fighter1 = fighter1
		@fighter2 = fighter2
	end
	def introduction
		puts "In corner one we have #{@fighter1.name}.  His opponent in corner 2 is #{@fighter2.name}.  Lets get ready to RUUUUUMMMMBBBBLLLLLE!"
	end
	def fight
		@fighter1.attack(@fighter2)
		@fighter2.attack(@fighter1)
	end
	def status
		puts "#{@fighter1.name} has #{@fighter1.health} health remaining."
		puts "#{@fighter2.name} has #{@fighter2.health} health remaining."
	end
end

bear = Bear.new("Yogi", 100, 20)
ninja = Ninja.new("Chuck Norris", 100, 25)
battle = Battle.new(bear, ninja)

battle.introduction

until battle.fighter1.health <= 0 || battle.fighter2.health <= 0
	battle.fight
	battle.status
end

