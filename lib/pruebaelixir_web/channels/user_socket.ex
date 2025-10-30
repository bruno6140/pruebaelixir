defmodule PruebaelixirWeb.UserSocket do
  use Phoenix.Socket

  # Canal
  channel "room:*", PruebaelixirWeb.RoomChannel

  def connect(_params, socket, _connect_info) do
    {:ok, socket}
  end

  def id(_socket), do: nil
end
