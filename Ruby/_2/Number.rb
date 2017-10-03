class Number

  def initialize(row, col)
    @row = row
    @col = col
    #@keypad = [[7, 8, 9], [4, 5, 6], [1, 2, 3]]
    @keypad = [[nil, nil, "D", nil, nil], [nil, "A", "B", "C", nil], [5, 6, 7, 8, 9], [nil, 2, 3, 4, nil], [nil, nil, 1, nil, nil]]


  end



  def move(way)
    case way
      when "U"
 #       debugger
        if @row < @keypad.length - 1
        @keypad[@row+1][@col] != nil ? @row += 1 : nil
        end
      when "D"
        if @row > 0
          @keypad[@row-1][@col] != nil ? @row -= 1 : nil
        end
      when "R"
        @keypad[@row][@col+1] != nil ? @col += 1 : nil
      when "L"
        if @col > 0
          @keypad[@row][@col-1] != nil ? @col -= 1 : nil
        end

    end



  end

  def iterate_line(line)
    line.each_char do |step|


      move(step)
      #print step

      #puts @keypad[@row][@col]


    end
      puts



    print @keypad[@row][@col]

    return [@row, @col]
  end




    def print_key
      print(@keypad[@row][@col])


    end


















end