require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_s.chomp

# 続きを書いていきましょう！！(ifで条件分岐)
if memo_type == "1"
  puts "拡張子を除いたファイルを入力してください"
  file_name = gets.to_s.chomp
  puts "メモしたい内容を記入してください"
  puts "完了したらCtrl + Dを　おします"
  content = readlines
  CSV.open("#{file_name}.csv", "w") do |test|
    test << content
  end
elsif memo_type == '2'
  puts "2が入力されました。"
else
  puts "それ以外です。"
end
