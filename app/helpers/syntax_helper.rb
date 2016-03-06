module SyntaxHelper
  def code language, &block
    content = capture(&block)
    return "<pre><code class=\"#{language}\">#{content}</code></pre>".html_safe
  end
end
