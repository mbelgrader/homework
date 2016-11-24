# longest fish in O(n2) time

# def longest_fish(array)
#   longest = ''
#
#   array.each do |fish|
#     array.each do |fish|
#       longest = fish if fish.length > longest.length
#     end
#   end
#
#   longest
# end

# longest fish in O(n log n) time

# def longest_fish(array)
#   array.sort_by(&:length).last
# end

# longest fish in O(n) time

def longest_fish(array)
  longest = ''
  array.each { |fish| longest = fish if fish.length > longest.length}
  longest
end

p longest_fish(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish',
  'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
  # => "fiiiissshhhhhh"


# slow dance O(n) time

def slow_dance(dir, tiles)
  tiles.index(dir)
end

tiles_array = ["up", "right-up", "right", "right-down", "down",
  "left-down", "left",  "left-up" ]

p slow_dance("up", tiles_array) #=> 0
p slow_dance("right-down", tiles_array) #=> 3

def fast_dance(dir, tiles)
  tiles[dir]
end

new_tiles_data_structure = {
  "up" => 0,
  "right-up" => 1,
  "right" => 2,
  "right-down" => 3,
  "down" => 4,
  "left-down" => 5,
  "left" => 6,
  "left-up" => 7
}

p fast_dance("up", new_tiles_data_structure) #=> 0
p fast_dance("right-down", new_tiles_data_structure) #=> 3
