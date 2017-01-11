defmodule TodosApp.PageController do
  use TodosApp.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
