# 初期値を設定
total_sum = 0
number = 77777

# 1 から 2000 までの N について処理を行う
(1..2000).each do |n|
  quotient = number / n      # 商を計算
  remainder = number % n     # 余りを計算
  total_sum += quotient      # 商を合計に加える
  total_sum += remainder     # 余りを合計に加える
end

# 結果を出力
puts "77777 ÷ N の商と余りを全て足した値: #{total_sum}"
