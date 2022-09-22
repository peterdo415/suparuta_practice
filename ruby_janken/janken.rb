def janken_count
  puts "何本勝負？(press 1 or 3 or 5)"
  t = gets.to_i
  puts "#{t}本勝負"


  t.times do
    puts "#{t}本目"
    puts "最初はグー、じゃんけん、、"
    puts "0:グー,1:チョキ,2:パー"

    player = gets.to_i
    cpu = rand(3)
  
    if player > 2
      puts "入力した値が無効"
      return true
    end

    hands = ["グー", "チョキー", "パー"]

    puts "あなたが出したのは、#{hands[player]}"
    puts "相手が出したのは、#{hands[cpu]}"

    if player == cpu
      puts "あいこ"
      drew += 1
    elsif player == 0 && cpu == 1
      puts "勝ち"
      win += 1
    else
      puts "負け"
      lose += 1
    end

  end
  
  if win == lose
    puts "結果：#{win}勝#{lose}敗で引き分け"
  elsif win > lose
    puts "結果：#{win}勝#{lose}敗で勝ち"
  else
    puts "結果：#{win}勝#{lose}敗で負け"
  end
end