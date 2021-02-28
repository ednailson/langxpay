defmodule Langxpay.Repo do
  use Ecto.Repo,
    otp_app: :langxpay,
    adapter: Ecto.Adapters.Postgres
end
