defmodule LivebookWeb.LayoutView do
  use LivebookWeb, :view

  js_path = Path.join(__DIR__, "../../../static/js/app.js")
  css_path = Path.join(__DIR__, "../../../static/css/app.css")

  @external_resource js_path
  @external_resource css_path

  @app_js File.read!(js_path)
  @app_css File.read!(css_path)

  def render("app.js", _), do: @app_js
  def render("app.css", _), do: @app_css
end
