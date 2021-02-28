defmodule LangxpayWeb.WelcomeController do
  use LangxpayWeb, :controller

  alias Langxpay.Numbers

  def index(conn, %{"filename" => filename}) do
    filename
    |> Numbers.sum_from_file()
    |> handle_response(conn)
  end

  defp handle_response({:ok, %{result: result}}, conn) do
    conn
    |> put_status(:ok)
    |> json(%{result: result})
  end

  defp handle_response({:error, %{message: message}}, conn) do
    conn
    |> put_status(:bad_request)
    |> json(%{message: message})
  end

end