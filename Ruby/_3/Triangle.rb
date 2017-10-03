class Triangle

  @@triangles = 0

  def self.findout(pole)

    pole.sort!

    if pole[0] + pole[1] > pole[2]

      @@triangles += 1


    end




  end

  def self.print_count

    return @@triangles

  end






end