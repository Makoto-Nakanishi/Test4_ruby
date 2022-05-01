require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_s.chomp

if memo_type == "1" 
    puts "拡張子を除いたファイル名を入力してください"

    memoTitle = gets.chomp
    
    puts "メモしたい内容を入力してください。Ctrl+Dで保存します"

    textNew = $stdin.read
    
    CSV.open("#{memoTitle}.csv","w") do |csv|
        csv.puts ["#{textNew}"]
    end

elsif memo_type == "2"
    puts "拡張子を除いたファイル名を入力してください"

    memoTitle = gets.chomp
    
    puts "メモしたい内容を入力してください。Ctrl+Dで保存します"
    
    textAdd = $stdin.read
    
    CSV.open("#{memoTitle}.csv","a") do |csv|
        csv.puts ["#{textAdd}"]
    end
else 
    puts "error!最初からやり直してください"
    return
end


