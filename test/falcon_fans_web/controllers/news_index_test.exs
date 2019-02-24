defmodule FalconFansWeb.NewsController.NewsIndexTest do
  use FalconFansWeb.ConnCase

  # setup %{conn: conn} do
  #   conn = build_conn()
  #     |> bypass_through(FalconFansWeb.Router, :browser)
  #     |> get("/")

  #   {:ok, %{conn: conn}}
  # end

  test "GET /", %{conn: conn} do
    conn = get conn, "/news"
    assert html_response(conn, 200) =~ "Welcome Falcons Fans!"
  end
end
