module ProfilesHelper
  def apps
    [
      {
        title: "Regexp? Quiz",
        desc: "正規表現の4択クイズができる学習用Webアプリです。　Sinatraで作成しました！",
        url: "https://regexpquiz.onrender.com/",
      },
      {
        title: "pdf_tool",
        desc: "Pythonで作成したPDF用のデスクトップアプリです！　レイアウトがいまいちなので修正中…",
        url: "https://github.com/kumaa-n/pdf_tool",
      },
    ]
  end
end
