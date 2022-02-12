FactoryBot.define do
  factory :corporate do
    name              { 'リクルートメント株式会社' }
    industry          { 'IT・ソフトウェア' }
    capital           { '200億円' }
    earnings          { '500億円' }
    employee          { '1000名' }
    place             { '東京都' }
    average_age       { '40歳' }
    average_income    { '300万円' }
    business_content  { 'ソフトウェア開発' }
    human_resource    { '立場や業種という垣根を超えてコミュニケーションを取れる人' }
    strength          { '顧客情報の探求により顧客から強い信頼をえている点' }
    weakness          { 'BtoB企業ということもあり知名度が低い点。広告に力を入れることで知名度の向上を目指すべきだと考える' }
    selection_method  { '適性検査→選考→一次面接→二次面接→最終面接→内定' }
    others            { '応募締切は3/1' }
  end
end
