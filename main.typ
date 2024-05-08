// MIT No Attribution
// Copyright 2024 Shunsuke Kimura

#import "jdocuments/jnote.typ": main, appendix, thebibliography
#show: main.with(
  title: [象の卵は大きい象], 
  authors: [象山象太郎],
  abstract: [古来より象の卵はもし存在するのならばとても大きいであろうと考えられてきた．
             そこで我々は象の習性を研究し卵を発見を探し当てる戦略を立て実際に象の卵を発見した．
             発見された卵は理論的に予測されていた大きさよりも大きかったということをを報告する．],
)



= はじめに
これはサンプルである．
象の卵は大きいだけでなくおいしくオムライス１０食分である．
象の卵は大きいだけでなくおいしくオムライス１０食分である．
象の卵は大きいだけでなくおいしくオムライス１０食分である．
象の卵は大きいだけでなくおいしくオムライス１０食分である．
象の卵は大きいだけでなくおいしくオムライス１０食分である．
象の卵は大きいだけでなくおいしくオムライス１０食分である．
象の卵は大きいだけでなくおいしくオムライス１０食分である．
象の卵は大きいだけでなくおいしくオムライス１０食分である．
この原稿のソースコードは #link("https://github.com/kmitsutani/typst-jp-note-template") で公開しております．

== 象の習性と卵の観測計画
象は大きくとても体重が大きいため産卵期の象にうかつに近づくことは危険である．
そこで我々は象型のドローンを開発し象の群れに忍ばせることによって象の生態を bla bla bla

== 観測された卵のサイズ
%観測した卵のサイズ(N=3)をもとにN=100の分布を生成する．

== 理論のサーベイ

%WIP%

= 謝辞
本研究は一切の補助を受けておらず自費にて行った．
また本論は @zouyama2015theory @zouyama2017drone @zouyama2021AiL に依拠するものである．
著者は著者の幸福に寄与するすべての境界条件に感謝する．

// Appendix
#show: appendix

= Appendix 1
hogehoge

= Appendix 2

hugahuga


// Path の解決は仕様的に無理らしい https://github.com/typst/typst/issues/3394 のでここでbibliographyオブジェクトにして渡す
#show: thebibliography.with(bibliography("refs.yml"))
