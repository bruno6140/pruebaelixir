defmodule Pruebaelixir.Repo do
  use Ecto.Repo,
    otp_app: :pruebaelixir,
    adapter: Ecto.Adapters.Postgres
end
