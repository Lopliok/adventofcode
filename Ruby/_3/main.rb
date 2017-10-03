require_relative "Triangle"
require 'byebug'

pole = []

iterator = 0

stringnumber = ""





File.open("input.txt", "r") do |f|

  f.each_line do |line|


    iterator += 1


    #print line

     stringnumber += line.strip

    if iterator == 3

      arr = stringnumber.split.map {|a| a.to_i }

      Triangle.findout([arr[0], arr[3], arr[6]])
      Triangle.findout([arr[1], arr[4], arr[7]])
      Triangle.findout([arr[2], arr[5], arr[8]])


      #Triangle.findout()

      stringnumber = ""

      iterator = 0


      next


    end


    stringnumber += " "


        # split.map {|a| a.to_i  }

    #pole << stringnumber








  end


end


#print stringnumber

#print pole


puts Triangle.print_count










