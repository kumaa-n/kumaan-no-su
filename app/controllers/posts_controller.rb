require "front_matter_parser"

class PostsController < ApplicationController
  BLOG_POSTS_DIR = Rails.root.join("app/blog_posts")

  def index
    md_files = Dir.glob(BLOG_POSTS_DIR.join("*.md")).sort.reverse
    @posts = md_files.map do |file|
      parsed = FrontMatterParser::Parser.parse_file(file)
      {
        filename: File.basename(file, ".md"),
        title: parsed.front_matter["title"],
        date: parsed.front_matter["date"],
        date_hyphen: parsed.front_matter["date"].gsub("-", "/"),
        summary: parsed.front_matter["summary"],
      }
    end
  end

  def show; end
end
