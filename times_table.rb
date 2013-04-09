

def times_table(rows)
    col = 1
    rows.times do 
      1.upto(rows) {|i| print "#{i * col} "}
      puts 
      col += 1
    end
end

times_table(5)
puts
times_table(10)


#1   2   3   4   5
#2   4   6   8  10   
#3   6   9  12  15   
#4   8  12  16  20   
#5  10  15  20  25
