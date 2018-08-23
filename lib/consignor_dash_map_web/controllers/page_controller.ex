defmodule ConsignorDashMapWeb.PageController do
  use ConsignorDashMapWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
