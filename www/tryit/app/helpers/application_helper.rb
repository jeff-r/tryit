require "redcarpet"

module ApplicationHelper
  def format_markdown(string)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, extensions = {})
    markdown.render(string)
  end
end
