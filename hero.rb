require_relative 'person'

class Hero < Person
    attr_accessor :deflect
    def initialize (name, hitpoint, attack_damage, deflect)
        super(@name = name, @hitpoint = hitpoint, @attack_damage = attack_damage)
        @deflect = deflect
    end

    def attack(other_person)
        other_person.take_damage(@attack_damage)
        puts "#{@name} attack #{other_person.name} with #{@attack_damage} damage"
    end

    def deflect?
        if rand(1..100) <= @deflect
            puts "#{@name} deflect attack"
            true
        end
    end
end
