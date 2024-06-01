def find_divisors(number)
  divisors = []
  (1..number).each do |i|
    if number % i == 0
      divisors << i
    end
  end
  divisors
end

print "約数を求めたい数値を入力してください"
number = gets.to_i
divisors = find_divisors(number)
divisors.each do |num|
  if num >= 10000 && num <= 99999
    divisors << num
  end
end


puts divisors
