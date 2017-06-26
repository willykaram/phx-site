defmodule PhxSite.Web.PageController do
  use PhxSite.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def community(conn, _params) do
    render conn, "community.html"
  end

end
