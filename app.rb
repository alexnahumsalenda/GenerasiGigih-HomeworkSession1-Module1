require_relative 'person'
require_relative 'hero'
require_relative 'villain'


jin = Hero.new("Jin Sakai", 100, 50, 30)
puts jin
puts "\n"

khotun = Villain.new("Khotun Khan", 500, 50)
puts khotun
puts "\n"

loop do
    jin.attack(khotun)
    puts khotun
    puts "\n"
    break if khotun.die?

    khotun.attack(jin)
    puts jin
    puts "\n"
    break if jin.die?
end
