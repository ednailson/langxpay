defmodule LangxpayWeb.UserView do

  alias Langxpay.{Account, User}

  def render("create.json", %{user: %User{account: %Account{} = account, id: id, name: name, nickname: nickname}}) do
    %{
      message: "user created",
      user: %{
        id: id,
        name: name,
        nickname: nickname,
        account: %{
          id: account.id,
          balance: account.balance
        }
      }
    }
  end

end