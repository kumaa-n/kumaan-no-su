module ProfilesHelper
  def apps
    [
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
