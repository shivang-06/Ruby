m = ARGV[0].to_i
n = ARGV[1].to_i
ARGV.clear()
arr = []

for i in (0..m - 1)
  row = []
  for j in (0..n - 1)
    val = gets.chomp.to_i
    row.push(val)
  end
  arr.push(row)
end

puts "************************************"

def spiral_display(arr)
  rmin = 0
  cmin = 0
  rmax = arr.length
  cmax = arr[0].length
  k = 0
  total = arr.length * arr[0].length
  while (k < total)
    for i in (rmin..rmax)
      if (k < total)
        puts (arr[i][cmin])
        k += 1
      end
    end
    cmin += 1
    for i in (cmin..cmax)
      if (k < total)
        puts(arr[rmax][i])
        k += 1
      end
    end
    rmax -= 1
    for i in (rmax).downto(rmin)
      if (k < total)
        puts(arr[i][cmax])
        k += 1
      end
    end
    cmax -= 1
    for i in (cmax).downto(cmin)
      if (k < total)
        puts(arr[rmin][i])
        k += 1
      end
    end
    rmin += 1
  end
end

spiral_display(arr)
