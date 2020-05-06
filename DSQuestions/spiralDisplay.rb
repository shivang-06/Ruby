m = ARGV[0].to_i
n = ARGV[1].to_i
ARGV.clear();
arr = []

for i in (0..m-1)
    row=[]
    for j in (0..n-1) 
        val = gets.chomp.to_i;
        row.push(val);

    end
    arr.push(row)    
end


puts "************************************"

def spDisp(arr)
  row = 0
  col = 0
  # print left wall
  for i in (row..arr.length - 1)
    for j in (0)
      print(arr[i][j].to_s + " ")
    end
  end
  col = col +1
        # print bottom wall
        for i in (arr.length - 1)
          for j in (col..arr[0].length - 1)
            print(arr[i][j].to_s + " ")
          end
        end
end
