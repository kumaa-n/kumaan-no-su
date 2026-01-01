module ProfilesHelper
  def apps
    [
      {
        title: "クラギごころ",
        desc: "クラギごころはクラシックギター楽曲の難易度評価・演奏技術分析でギタリストの曲選びと練習をサポートするWebサービスです。テンポ、運指、表現力など詳細評価を共有できます。",
        url: "https://clagi-gokoro.com"
      },
      {
        title: "pdf_tool",
        desc: "Pythonで作成したPDF用のデスクトップアプリです！　レイアウトがいまいちなので修正中…",
        url: "https://github.com/kumaa-n/pdf_tool"
      },
      {
        title: "Regexp? Quiz",
        desc: "正規表現の4択クイズができる学習用Webアプリです。　Sinatraで作成しました！",
        url: "https://regexpquiz.onrender.com"
      },
      {
        title: "秋フレーズジェネレーター",
        desc: "秋の季節を感じられるフレーズをランダムに生成するWebアプリケーションです。",
        url: "https://autumn-phrase-generator.vercel.app"
      }
    ]
  end
end
