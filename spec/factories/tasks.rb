# 「FactoryBotを使用します」という記述
FactoryBot.define do
  # 作成するテストデータの名前を「task」とします
  # （実際に存在するクラス名と一致するテストデータの名前をつければ、そのクラスのテストデータを自動で作成します）
  factory :task do
    name { 'Factory1' }
    detail { 'Factory1_detail' }
    deadline { 1.month.ago }
    status { 0 }
    priority { 0 }
  end
  # 作成するテストデータの名前を「second_task」とします
  # （存在しないクラス名の名前をつける場合、オプションで「このクラスのテストデータにしてください」と指定します）
  factory :second_task, class: Task do
    name { 'Factory2' }
    detail { 'Factory2_detail' }
    deadline { 1.month.ago }
    status { 0 }
    priority { 0 }
  end
end
