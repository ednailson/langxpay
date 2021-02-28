defmodule LangxpayWeb.UserController do
  use LangxpayWeb, :controller

  alias Langxpay.User

  action_fallback LangxpayWeb.FallbackController

  def create(conn, params) do
    with {:ok, %User{} = user} <- Langxpay.create_user(params) do
      conn
      |> put_status(:created)
      |> render("create.json", user: user)
    end
  end
end