defmodule PruebaelixirWeb.HomeController do
  use PruebaelixirWeb, :controller

  def index(conn, _params) do
    render(conn, :index)
  end
end
