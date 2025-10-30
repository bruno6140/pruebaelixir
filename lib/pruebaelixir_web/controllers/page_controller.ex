defmodule PruebaelixirWeb.PageController do
  use PruebaelixirWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
