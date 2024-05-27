input_lines = readlines #複数行で標準入力を行うメソッド 行ごとに配列に格納
room = input_lines[0].to_i #文字列を整数に変換も行う
air_conditioner = input_lines[1].to_i
air_power = input_lines[2].to_i
temperature_diff = (room - air_conditioner).abs #absは差を絶対値
require_time = 0 #変数を初期化

if temperature_diff < 5
  require_time = 15
elsif temperature_diff >= 5 && temperature_diff < 10 then
  require_time = 30
elsif temperature_diff >= 10 then
  require_time = 60
end

case air_power
when 1 then
  require_time
when 2 then
  require_time = require_time -5
when 3 then
  require_time = require_time -10
else
  p "風量の値は1~3にしてください"
  exit
end

p require_time