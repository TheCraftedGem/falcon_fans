defmodule FalconFansWeb.PageController do
  use FalconFansWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
