class Zaznam

  @@pole = [[0]]
  @@poradi = 1

  @@pruseciky = []



  def self.vypis

    print(@@pruseciky)


  end


  def self.find(x, range)

    range.each do |dotazy|
      if @@pole[x] && x >= 0
        if @@pole[x].include?(dotazy)


          shoda = {:poradi => @@poradi, :prusecik => [x, dotazy]}
          @@pruseciky << shoda

          @@poradi += 1

        end
      end


    end


  end

  def self.findout(xrange, y)



    xrange.each do |x|



      if @@pole[x] && x >= 0
        if @@pole[x].include?(y)

          
          shoda = {:poradi => @@poradi, :prusecik => [x, y]}
          @@pruseciky << shoda

          @@poradi += 1


        end
      end


    end


  end

  def self.pridej(x, rozsah)
      if !(@@pole[x])
        @@pole[x] = []
      end

      rozsah.each do |y|

        if !(@@pole[x].include?(y))
          @@pole[x] << y
        end


      end

  end

  def self.pridavej(xrozsah, y)


    xrozsah.each do |x|




      if !(@@pole[x])
        @@pole[x] = []
      end
      if !(@@pole[x].include?(y))
        @@pole[x] << y

      end

    end

  end


  end