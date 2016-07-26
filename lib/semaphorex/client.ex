defmodule Semaphorex.Client do
  @endpoint "https://semaphoreci.com/api/v1/"

  defstruct auth_token: nil, endpoint: @endpoint

  @type token :: String.t
  @type t :: %__MODULE__{auth_token: token, endpoint: String.t}

  @spec new(token) :: t
  def new(token), do: %__MODULE__{auth_token: token, endpoint: @endpoint}
end
