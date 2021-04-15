#ファイルの読み込み
require "./methods"

#旅行プラン一覧
plans = [
  {name: "沖縄旅行", price: 10000}, 
  {name: "北海道旅行", price: 20000}, 
  {name: "九州旅行", price: 15000}
]

#メソッドの出力
puts "旅行プランを選択して下さい。"
#プラン一覧の表示
disp_plans(plans)
#プランの選択
select_plan = select_plan(plans)
#予約人数の選択
reserve_member_num = reserve_member_num()
#合計金額の計算
calculate_cost(select_plan, reserve_member_num)