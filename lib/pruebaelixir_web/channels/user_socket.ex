defmodule PruebaelixirWeb.UserSocket do
  use Phoenix.Socket

  # Canal
  channel "room:*", PruebaelixirWeb.RoomChannel

  def connect(_params, socket, _connect_info) do
    uid =
      :crypto.strong_rand_bytes(6)
      |> Base.url_encode64(padding: false)
      |> binary_part(0, 8)

    {:ok, assign(socket, :uid, uid)}
  end

  def id(_socket), do: nil
end
