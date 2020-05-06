#Dynamically typed
#Truly object orientd language
puts "Hello Ruby"

def is_prime(num)
  div = 2
  while (div * div <= num)
    if (num % div == 0) #Brackets are optional as well
      return false
    end
    div = div + 1
  end
  return true
end

a = is_prime(11)
puts "Number 20 is ? " + a.to_s()

def print_all_primes(num)
  for i in (2..num)
    is_status = is_prime(i)
    if (is_status)
      puts i
    end
  end
end

b = print_all_primes(100)