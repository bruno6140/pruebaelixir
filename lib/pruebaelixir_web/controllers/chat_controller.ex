defmodule PruebaelixirWeb.ChatController do
  use PruebaelixirWeb, :controller

  def show(conn, %{"room" => room}) do
    render(conn, :show, room: room)
  end
end
