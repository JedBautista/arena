class Arena
	def duel(hero1, hero2)
		attack = [hero1, hero2].sample
		
		if attack === hero1
			hero1.attack(hero2)
		elsif attack === hero2
			hero2.attack(hero1)
		end
	end
end

class Hero
	attr_accessor :hp, :armor, :dmg, :name
	
	def initialize
		@hp = hp
		@armor = armor
		@dmg = dmg
		@name = name
	end

	def attack(opponent)
		if opponent.armor > @dmg
			puts "#{opponent.name} has #{opponent.armor - @dmg} armor left" 
		elsif opponent.armor < @dmg
			puts "#{opponent.name} has #{(opponent.armor + opponent.hp) - @dmg} hp left"
		end
	end
end

class Warrior < Hero
	def initialize
		@hp = 100
		@armor = 25
		@dmg = 25
		@name = 'Reaper'
	end
end

class Healer < Hero
	def initialize
		@hp = 60
		@armor = 0
		@dmg = 5
		@name = 'Mercy'
	end
end

class Mage < Hero
	def initialize
		@hp = 40
		@armor = 0
		@dmg = 100
		@name = 'Moira'
	end
end

class Tank < Hero
	def initialize
		@hp = 100
		@armor = 100
		@dmg = 0.5
		@name = 'Rein'
	end
end
