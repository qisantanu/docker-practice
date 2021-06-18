=begin
Ruby program to find the factorial of a given number.
=end

class Factorial
  def self.result(num)
    time = Time.now
    fact=1
    if (num==0)
      puts "Error! Could not find the factorial of one"
    else
      i=1
      while(i<=num)
        fact=fact*i
        i+=1
      end
    end
    puts "time taken: #{Time.now - time} seconds"
    puts "factorial of #{num} is #{fact}"
  end
end