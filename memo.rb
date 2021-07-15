require "csv"
puts "1(新規でメモを作成する) 2(既存のメモを編集する)"

memo_type = gets.to_i

if memo_type == 1
  puts "拡張子を除いたファイル名を記入してください"
  file_name = gets.chomp!
  puts "メモしたい内容を入力してください"
  puts "完了したらCtrl + Dをおしてください"
  memo = $stdin.read
  CSV.open("#{file_name}.csv" , "w") do |csv|
  csv.puts ["#{memo}"]
  end 
elsif memo_type == 2
  puts "編集したいファイル名を入力してください"
  file_name = gets.chomp!
  puts "追記したい内容を入力してください"
  puts "完了したらCtrl + Dをおしてください"
  memo = $stdin.read
  CSV.open("#{file_name}.csv" , "a")do |csv|
  csv.puts ["#{memo}"]
  end
end