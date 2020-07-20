class Player
  def hand
    puts "0~2の数字を入力してください。"
    puts  "0:グー, 1:チョキ, 2:パー"
    input_hand =gets.chomp
    while true
      if input_hand == "0" || input_hand == "1" || input_hand == "2"
        return input_hand.to_i
      else
        puts "0~2の数字を入力してください。"
        puts "puts 0:グー, 1:チョキ, 2:パー"
        input_hand = gets.chomp
      end
    end
  end

end
class Enemy
  def hand
    enemy_hand = rand(3)
  end
end

class Janken
  def pon(input_hand, enemy_hand)
    janken = ["グー", "チョキ", "パー"]
    puts "相手の手は#{janken[enemy_hand]}です。"
    while true
      if (input_hand - enemy_hand + 3)%3 == 0
        puts "あいこです"
      return true
      elsif (input_hand - enemy_hand + 3)%3 == 2
        puts "あなたの勝ちです"
        return false
      elsif (input_hand - enemy_hand + 3)%3 == 1
        puts "あなたの負けです"
        return false
      end
    end
  end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new

  next_game = true
while next_game
    next_game = janken.pon(player.hand, enemy.hand)
end
