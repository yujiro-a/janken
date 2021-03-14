while true do
  puts "じゃんけん..."
  puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
  
  hands = ["グー","チョキ","パー","降参"]
  my_hand = gets.to_i
  com_hand = rand(3)
  
  if my_hand == 3
    puts "あなたは降参しました"
    exit
  end
  
  puts "ホイ ！"
  puts "------------------"
  
  status = "aiko"
  
  while status == "aiko" do
  puts "あなたは#{hands[my_hand]}を出しました"
  puts "相手は#{hands[com_hand]}を出しました"
  puts "------------------"
    if my_hand == com_hand
      puts "あいこで..."
      puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
      my_hand = gets.to_i
      com_hand = rand(3)
      if my_hand == 3
        puts "あなたは降参しました"
        exit
      end
      puts "ショ ！"
      puts "------------------"
      status = "aiko"
      
    elsif (my_hand == 0 && com_hand == 1)||(my_hand == 1 && com_hand == 2)||(my_hand == 2 && com_hand == 0)
      puts "あっち向いて〜"
      puts "0(上) 1(下) 2(左) 3(右)"
      dire = ["上","下","左","右"]
      my_dire = gets.to_i
      com_dire = rand(4)
      puts "ホイ !"
      puts "------------------"
      puts "あなた:#{dire[my_dire]}"
      puts "相手:#{dire[com_dire]}"
      puts "------------------"
      if my_dire == com_dire
        puts "あなたの勝ちです"
        exit
      end
      status = dire
    else
      puts "あっち向いて〜"
      puts "0(上) 1(下) 2(左) 3(右)"
      dire = ["上","下","左","右"]
      my_dire = gets.to_i
      com_dire = rand(4)
      puts "ホイ !"
      puts "------------------"
      puts "あなた:#{dire[my_dire]}"
      puts "相手:#{dire[com_dire]}"
      puts "------------------"
      if my_dire == com_dire
        puts "あなたの負けです"
        exit
      end
      status = dire
    end
  end
end