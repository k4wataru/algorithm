# 最適化された約数を求めるメソッドを定義
def find_divisors(number)
  divisors = []  # 約数を格納する配列を初期化
  (1..Math.sqrt(number).to_i).each do |i|
    if number % i == 0
      divisors << i
      divisors << number / i if i != number / i  # i と対になる約数を追加
    end
  end
  divisors  # 約数の配列を返す
end

# 指定された数値
number = 1919998080

# 約数を求める
divisors = find_divisors(number)

# 約数のうち、10000 以上 99999 以下のものを抽出
filtered_divisors = divisors.select { |divisor| divisor >= 10000 && divisor <= 99999 }

# 抽出した約数の個数を出力
puts "数値 #{number} の約数のうち、10000 以上 99999 以下の範囲にあるものの個数: #{filtered_divisors.count}"
