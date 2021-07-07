require_relative 'person'

class Villain < Person
    def attack(other_person)
        puts "#{@name} attack #{other_person.name} with #{@attack_damage} damage"
        unless other_person.deflect?
            other_person.take_damage(@attack_damage)
        end
    end
end
