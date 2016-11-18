require 'byebug'
class Map
  attr_reader :items

  def initialize
    @items = []
  end

  def assign(key, value)
    @items.each { |pair| @items.delete(pair) if pair[0] == key }
    @items << [key, value]
  end

  def remove(key)
    @items.each { |pair| @items.delete(pair) if pair[0] == key }
  end

  def show
    puts "#{items}"
  end
end

my_map = Map.new

my_map.assign("CA", "California")
my_map.assign("MD", "Maryland")
my_map.assign("NY", "New York")
my_map.show

my_map.remove("MD")
my_map.show

my_map.assign("TX", "Texas")
my_map.show

my_map.assign("NY", "Birthplace")
my_map.show
