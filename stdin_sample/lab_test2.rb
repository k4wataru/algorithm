# 平方根の整数部分の総和を計算する関数
def sum_of_floor_sqrt(n)
  sum = 0
  (1..n).each do |i|
    sum += Math.sqrt(i).to_i
  end
  sum
end

# 総和が1000000以上になる最小の整数Nを見つける
target_sum = 1000000
n = 1

while true
  current_sum = sum_of_floor_sqrt(n)
  if current_sum >= target_sum
    puts "平方根の整数部分の総和が #{target_sum} 以上になる最小の整数 N は #{n} です。"
    break
  end
  n += 1
end
