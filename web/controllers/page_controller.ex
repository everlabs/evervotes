defmodule EvervotesApi.PageController do
  use EvervotesApi.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
