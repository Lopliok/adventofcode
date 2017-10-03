require_relative "Number"
require 'byebug'

pole = []

row = 2
col = 0



File.open("input_file.txt", "r") do |f|

  f.each_line do |line|
    line.delete! "\s\n"

    cislo = Number.new(row, col)

    coord = cislo.iterate_line(line)

    row = coord[0]
    col = coord[1]
    #puts line
    # pole = line.strip.split(",")

  end


end





