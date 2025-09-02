require "front_matter_parser"
require "kramdown"
require "kramdown-parser-gfm"

class PostLoader
  POSTS_DIR = Rails.root.join("app", "blog_posts")

  attr_reader :filename, :front_matter, :content_html

  def initialize(filename)
    @filename = filename
    file_path = POSTS_DIR.join("#{filename}.md")
    raise ActiveRecord::RecordNotFound, "Blog post not found" unless File.exist?(file_path)

    parsed = FrontMatterParser::Parser.parse_file(file_path)

    @front_matter = {
      title: parsed.front_matter["title"],
      date: parsed.front_matter["date"],
      date_hyphen: parsed.front_matter["date"].gsub("-", "/"),
      summary: parsed.front_matter["summary"]
    }

    @content_html = Kramdown::Document.new(parsed.content, input: "GFM").to_html
  end

  def info
    front_matter.merge(filename: filename)
  end

  def self.all
    Dir.glob(POSTS_DIR.join("*.md")).sort.reverse.map do |file|
      begin
        new(File.basename(file, ".md"))
      rescue => e
        Rails.logger.error("[PostLoader.all] Failed to load #{file}: #{e.message}")
        nil
      end
    end.compact
  end
end
