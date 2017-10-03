require "byebug"

arr = []
sum = 0


File.open("input.txt", "r") do |f|

  f.each_line do |line|


      line = line.strip.split("[")

      pattern = line[1].delete(']')

      line = line[0]

      isRoom = true
      index = 0
      lastindex = 0

      pattern.each_char do |char|


        if line.include?(char) && lastindex <= index

          debugger

          lastindex = index
          
          line.each_with_index {|, | .} do |prvek|

        else

          isRoom = false

        end


        index += 1

      end
          # split("[").map {||}

        if isRoom

          sum += line.split("-")[-1].to_i

          arr << line

        end


  end


end


print arr.length
puts
puts sum
