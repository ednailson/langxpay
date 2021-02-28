defmodule Langxpay do

  alias Langxpay.Users.Create, as: UserCreate

  defdelegate create_user(params), to: UserCreate, as: :call

end
