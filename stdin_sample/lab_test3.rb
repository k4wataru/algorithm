def digit_product(n)
  n.to_s.chars.map(&:to_i).reduce(1, :*)
end

def persistence_steps(n)
  steps = 0
  while n >= 10
    n = digit_product(n)
    steps += 1
  end
  steps
end

count = 0

(1..1000000).each do |i|
  if persistence_steps(i) == 5
    count += 1
  end
end

puts count
