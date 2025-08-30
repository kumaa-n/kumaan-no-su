module ApplicationHelper
  def social_link(name)
    links = {
      github: "https://github.com/kumaa-n",
      note:   "https://note.com/kumaa_n",
      x:      "https://x.com/KUMAA_N_",
    }

    links[name]
  end

  def page_title(title = '')
    base_title = 'くまーんの巣'
    title.present? ? "#{title} | #{base_title}" : base_title
  end
end
