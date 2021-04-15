#メソッドの定義
#プラン一覧を表示するメソッド
def disp_plans(plans)
  plans.each.with_index(1){|plan, i|
    puts "#{i}. #{plan[:name]}(#{plan[:price]}円)"
  }
end

#プラン選択のメソッド
def select_plan(plans)
  plans_size = plans.size
  while true
    print "プランの番号を選択 > "
    plan_num = gets.to_i
    break if (1..plans_size).include?(plan_num)
    puts "1〜#{plans_size}の番号を入力して下さい。"
  end
  select_plan = plans[plan_num - 1]
  puts "#{select_plan[:name]}ですね。"
  select_plan
end

#予約人数選択のメソッド
def reserve_member_num
  puts "何名で予約されますか？"
  while true
    print "人数を入力 > "
    reserve_member_num = gets.to_i
    break if reserve_member_num >= 1
    puts "1以上を入力して下さい。"
  end
  puts "#{reserve_member_num}名ですね。"
  reserve_member_num
end

#合計金額の計算
def calculate_cost(select_plan, reserve_member_num)

  discount_num = 5
  discount_rate = 10
  after_discount = 1 - (discount_rate / 100.to_f)

  total_cost = select_plan[:price] * reserve_member_num
  if reserve_member_num >= discount_num
    total_cost *= after_discount
    puts "#{discount_num}名以上ですので#{discount_rate}%割引となります"
  end
  puts "合計料金は#{total_cost.floor}円になります。"
end