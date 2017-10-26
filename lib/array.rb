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

    while left_to_right <= right_to_left && bottom_to_top <= top_to_bottom
      case direction
      when 0
        (bottom_to_top..top_to_bottom).each { |i| array << self[left_to_right][i]; print "#{self[left_to_right][i]} " }
        left_to_right += 1
        direction = 1
      when 1
        (left_to_right..right_to_left).each { |i| array << self[i][top_to_bottom]; print "#{self[i][top_to_bottom]} " }
        top_to_bottom -= 1
        direction = 2
      when 2
        top_to_bottom.downto(bottom_to_top).each { |i| array << self[right_to_left][i]; print "#{self[right_to_left][i]} " }
        right_to_left -= 1
        direction = 3
      else
        right_to_left.downto(left_to_right).each { |i| array << self[i][bottom_to_top]; print "#{self[i][bottom_to_top]} " }
        bottom_to_top += 1
        direction = 0
      end
    end
    array
  end

  def recurzive_spiral_print
    return [] if self.empty?
  end
end
