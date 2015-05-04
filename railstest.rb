#check rational no is able to divisable enough and check the sign of rational no too and return rational no 
def check_no(c)
  if c.numerator % c.denominator ==0
    return c
  elsif c.numerator < 0
    is_neg = true
    c = 0-c 
  end
  if c.numerator > c.denominator
    q = c.numerator / c.denominator
    n = c.numerator - q * c.denominator 
    q = is_neg ? -q : q
    d = c.denominator
  end 
    return q ? "#{q}"+" #{Rational(n,d)}" :  c
end 
a = gets.chomp ##take input as string
rat_arr,is_neg = Array.new,false
a.split.each {|d| rat_arr << Rational(d)} #split string
a,b = check_no(rat_arr[0]),check_no(rat_arr[1])
puts "#{a} + #{b} ="
c = Rational(rat_arr[0]) + Rational(rat_arr[1]) ##add nos
puts check_no(c)
puts "#{a} - #{b} ="
c = Rational(rat_arr[0]) - Rational(rat_arr[1]) ##subs nos
puts check_no(c)
puts "#{a} * #{b} ="
c = Rational(rat_arr[0]) * Rational(rat_arr[1]) ##muliply nos
puts check_no(c)
