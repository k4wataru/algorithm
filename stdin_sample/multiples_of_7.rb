# 7から7777777までの7の倍数を全て列挙する
# multiples_of_7 = (7..7777777).step(7)
multiples_of_7 = 7.step(7777777, 7)

# 7の出現回数をカウントするための変数
count_of_7 = 0

# 各7の倍数について
multiples_of_7.each do |num|
  # 数字を文字列に変換し、各文字を調べる
  count_of_7 += num.to_s.count('7')
end

# 結果を表示する
puts count_of_7