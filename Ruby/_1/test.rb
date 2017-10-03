require_relative "zaznam.rb"
require "byebug"

pole = []






File.open("file.txt", "r") do |f|

  f.each_line do |line|
    line.delete! "\s\n"
    pole = line.strip.split(",")
  end


end





print(pole)


smer = "nahoru"

souradnice = {:x => 0, :y => 0}




pole.each do |prvek|


  case smer
    when "nahoru"
      if prvek[0] == "L"

        prvek.delete!("L")

        print souradnice

        puts prvek + " doleva "

        xkon = souradnice[:x] - prvek.to_i
        xzac = souradnice[:x] - 1




        Zaznam.findout(xzac..xkon, souradnice[:y])
        Zaznam.pridavej(xzac..xkon, souradnice[:y])



        souradnice[:x] -= prvek.to_i

        smer = "doleva"


      else
        prvek.delete!("R")

        print souradnice

        xkon = souradnice[:x] + prvek.to_i
        xzac = souradnice[:x] + 1



        Zaznam.findout(xzac..xkon, souradnice[:y])
        Zaznam.pridavej(xzac..xkon, souradnice[:y])

        souradnice[:x] += prvek.to_i


        puts prvek + " doprava "

        smer = "doprava"


      end


    when "dolu"
      if prvek[0] == "R"

        prvek.delete!("R")
        print souradnice

        puts prvek + " doleva "


        xzac = souradnice[:x] - prvek.to_i
        xkon = souradnice[:x] - 1



        Zaznam.findout(xzac..xkon, souradnice[:y])
        Zaznam.pridavej(xzac..xkon, souradnice[:y])


        souradnice[:x] -= prvek.to_i

        smer = "doleva"


      else
        prvek.delete!("L")

        print souradnice

        xkon = souradnice[:x] + prvek.to_i
        xzac = souradnice[:x] + 1



        Zaznam.findout(xzac..xkon, souradnice[:y])
        Zaznam.pridavej(xzac..xkon, souradnice[:y])

        souradnice[:x] += prvek.to_i

        puts prvek + " doprava "

        smer = "doprava"


      end


    when "doleva"
      if prvek[0] == "R"

        prvek.delete!("R")

        print souradnice

        puts prvek + " nahoru "

        ykon = souradnice[:y] + prvek.to_i
        yzac = souradnice[:y] + 1

        Zaznam.find(souradnice[:x], yzac..ykon)
        Zaznam.pridej(souradnice[:x], yzac..ykon)


        souradnice[:y] += prvek.to_i

        smer = "nahoru"


      else
        prvek.delete!("L")

        print souradnice

        ykon = souradnice[:y] - prvek.to_i
        yzac = souradnice[:y] - 1



        Zaznam.find(souradnice[:x], yzac..ykon)
        Zaznam.pridej(souradnice[:x], yzac..ykon)

        souradnice[:y] -= prvek.to_i

        puts prvek + " dolu "

        smer = "dolu"


      end


    when "doprava"
      if prvek[0] == "R"

        prvek.delete!("R")

        print souradnice

        puts prvek + " dolu "



        ykon = souradnice[:y] - prvek.to_i
        yzac = souradnice[:y] - 1



        Zaznam.find(souradnice[:x], yzac..ykon)
        Zaznam.pridej(souradnice[:x], yzac..ykon)




        souradnice[:y] -= prvek.to_i

        smer = "dolu"


      else
        prvek.delete!("L")

        print souradnice

        ykon = souradnice[:y] + prvek.to_i
        yzac = souradnice[:y] + 1



        Zaznam.find(souradnice[:x], yzac..ykon)
        Zaznam.pridej(souradnice[:x], yzac..ykon)



        souradnice[:y] += prvek.to_i

        puts prvek + " nahoru "

        smer = "nahoru"


      end


  end


end


print(souradnice)

puts

puts(souradnice[:x] + souradnice[:y])


Zaznam.vypis





