body =
    "Morning Gloryが4対2でSunflowerに勝利。\n
    二回表、6番渡辺の二塁打から七番山田、8番高橋の連続タイムリーで2点先制。\n
    9回表、ランナー一二塁で2番田中の二塁打で2点を挙げ、ダメを押しました。\n
    投げては初先発の山本が七回を2失点で抑え、伊藤、中村とつないで逃げ切りました。"

0.upto(9) do |idx|
  Article.create(
             title:"練習試合の結果#{idx}" + (idx % 3 == 0 ? "（会員限定です）" : ""),
             body: body,
             released_at: 8.days.ago.advance(days: idx),
             expired_at: 2.days.ago.advance(days: idx),
             member_only:(idx % 3 == 0)
  )
end