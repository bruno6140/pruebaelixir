defmodule PruebaelixirWeb.RoomChannel do
  use Phoenix.Channel

  # Lobby dinámico
  def join("room:" <> _room_name, _params, socket) do
    {:ok, socket}
  end

  def handle_in("new_msg", %{"body" => body}, socket) do
    broadcast!(socket, "new_msg", %{body: body})
    {:noreply, socket}
  end
end
