defmodule PruebaelixirWeb.RoomChannel do
  use Phoenix.Channel

  # Lobby dinámico
  def join("room:" <> _room_name, _params, socket) do
    uid = socket.assigns[:uid] || "desconocido"
    {:ok, %{uid: uid}, socket}
  end

  def handle_in("new_msg", %{"body" => body}, socket) do
    uid = socket.assigns[:uid] || "desconocido"
    broadcast!(socket, "new_msg", %{body: body, uid: uid})
    {:noreply, socket}
  end
end
