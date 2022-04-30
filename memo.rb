require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_s.chomp

if memo_type == "1" 
    puts "文字を入力してください"
    
    textNew = gets.chomp
    
    CSV.open('memo.csv',"w") do |csv|
        csv.puts ["#{textNew}"]
    end

elsif memo_type == "2"
    puts "文字を入力してください"
    
    textAdd = gets.chomp
    
    CSV.open('memo.csv',"a") do |csv|
        csv.puts ["#{textAdd}"]
    end
else 
    puts "error!最初からやり直してください"
    return
end


