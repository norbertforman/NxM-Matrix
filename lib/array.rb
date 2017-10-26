require 'byebug'

# [
#   [1,2,3,4,5],
#   [6,7,8,9,10],
#   [11,12,13,14,15],
#   [16,17,18,19,20],
#   [21,22,23,24,25]
# ]

class Array

  # direction 0 - print from left to right, horizontaly
  # direction 1 - print from top to boleft_to_rightom, verticaly
  # direction 2 - print from right to left, horizontaly
  # direction 2 - print from boleft_to_rightom to top, verticaly
  # left_to_right - indicates the starting point, left top corner
  # right_to_left - indicates the right upper corner of the matrix
  # top_to_bottom - indicates the right upper corner of the matrix
  # bottom_to_top - indicates the starting point, left top corner
  def spiral_print
    return [] if self.empty?

    array = []
    direction = 0
    left_to_right = 0
    right_to_left = self[0].length - 1
    top_to_bottom = self.length - 1
    bottom_to_top = 0

    count = 0
    total = self.flatten.length

    while count < total
      case direction
      when 0
        (left_to_right..right_to_left).each do |index|
          next if self[left_to_right].nil?
          print "#{self[left_to_right][index]} "
          array << self[left_to_right][index];
          count += 1
        end
        left_to_right += 1
        direction = 1
      when 1
        (left_to_right..top_to_bottom).each do |index|
          next if self[index].nil?
          print "#{self[index][right_to_left]} "
          array << self[index][right_to_left];
          count += 1
        end
        top_to_bottom -= 1
        direction = 2
      when 2
        (right_to_left - 1).downto(bottom_to_top).each do |index|
          next if self[right_to_left].nil?
          print "#{self[right_to_left][index]} "
          array << self[right_to_left][index]
          count += 1
        end
        right_to_left -= 1
        direction = 3
      else
        right_to_left.downto(left_to_right).each do |index|
          next if self[index].nil?
          print "#{self[index][bottom_to_top]} "
          array << self[index][bottom_to_top]
          count += 1
        end
        bottom_to_top += 1
        direction = 0
      end
    end
    array
  end

  # shift return the first chunk of the array keeping the rest
  # transpose [[1,2,3], [1,2,3]] -> [[1,1], [2,2], [3,3]]
  def recurzive_spiral_print
    return [] if self.empty?
    array = self.shift
    array.each { |i| print "#{i} "}
    array + self.transpose.reverse.recurzive_spiral_print
  end
end
