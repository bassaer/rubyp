=begin
VERSION = 1.1

puts VERSION
VERSION = 1.2

puts VERSION

p 2.3.class
p 'hoge'.methods
p Rational(2,5) + 3/4r


puts "hello\n world\td"
puts 'hello\n world\td'

puts "price is #{300 * 2}"
puts 'price is #{300 * 2}'

puts 'hello' * 10

puts 'hello ' + "world"


name = 'hoge'

puts name.upcase
puts name
puts name.upcase!
puts name

name = 'hoge'

p name.empty?
p name.include?('e')

colors = ['red', 'blue', 'yello']

p colors[0]
p colors[-1]
p colors[0..2]
p colors[0...2]
p colors[5]

colors[0] = 'pink'
colors[1..2] = ['white', 'black']
colors.push('gold')
colors << 'silver'
p colors

p colors.size
p colors.sort

scores = {hoge: 200, fuga: 40}
p scores[:hoge]
scores[:fuga] = 600
p scores

p scores.size
p scores.keys
p scores.values
p scores.has_key?(:hoge)

x = 50
y = "2"

p x + y.to_i
p x + y.to_f
p x.to_s + y

scores = { hoge: 200, fuga: 300 }
p scores.to_a.to_h

puts %Q(hel"lo)
puts %(hoge''hoge)
puts %q(huge"""fuga)

p %W(red blue)
p %w(red blue)

p "name: %s" % 'hoge'
p "name: %10s" % 'hoge'
p "name: %-10s" % 'hoge'

p "id: %05d, rate:%10.2f" % [355, 3.145]

score = gets.to_i

if score > 80
  puts 'great!'
elsif score > 60
  puts 'good!'
else
  puts 'bad'
end
puts 'perfect!!' if score == 100


signal = gets.chomp

case signal
when 'red'
  puts 'stop'
when 'green', 'blue'
  puts 'go'
when 'yellow'
  puts 'caution'
else
  puts 'error'
end
i = 0

while i < 10 do
  puts "#{i} hello\n"
  i += 1
end

10.times do |i|
  puts "#{i} : hoge"
end

10.times { |i| puts "#{i}: foo" }

10.times do |i|
  puts "#{i} : even" if i % 2 == 0
end


for i in 15..20
  p i
end

for color in ['red', 'blue']
  p color
end

for name, score in {hoge: 20, fuga: 100} do
  puts "#{name} : #{score}"
end

["red", "blue"].each do |color|
  p color
end

{hoge: 39, foo: 400}.each { |name, score| puts "#{name} : #{score}" }


i = 0
loop do
  p i
  i += 1
end

10.times do |i|
  if (i == 7) then
    break
  end
  p i
end


def sayHi(name='tom')
  return "Hi #{name}"
end

p sayHi('hoge')
p sayHi

=end

class User
  @@count = 0
  attr_accessor :name
  VERSION = 1.1
  def initialize(name)
    @@count += 1
    @name = name
  end

  def sayHi
    puts "hi I am #{self.name}"
    sayPrivate
  end

  def self.info
    puts "#{VERSION} : User class,#{@@count} instances." 
  end

  private 
    def sayPrivate
      puts "this is private"
    end

end
=begin
tom = User.new('tom')
tom.sayHi
tom.name = 'tom Jr'
tom.sayHi
User.info

bob = User.new('bob')
steave = User.new('steave')

User.info
p User::VERSION

class AdminUser < User
  def sayHello
    puts "Hello from #{@name}"
  end
  def sayHi
    puts "Hi from admin"
  end
  def sayPrivate
    puts "private from admin"
  end
end
tom = AdminUser.new("tom")
tom.sayHi
tom.sayHello
tom.sayPrivate

module Video
  VERSION = 1.1
  def self.encode
    puts 'encoding..'
  end
  def self.export
    puts 'exporting..'
  end
end

Video.encode
Video.export
p Video::VERSION


module Debug
  def info
    puts "#{self.class} debug info.."
  end
end

class Player
  include Debug
end

class Monster
  include Debug
end


Player.new.info
Monster.new.info

=end

x = gets.to_i

class MyError < StandardError; end

begin
  if x == 3
    raise MyError
  end
  p 100 / x
rescue MyError
  puts 'not 3!'
rescue => ex
  p ex.message
  p ex.class
  puts "stopped!"
ensure
  puts '--END--'
end


