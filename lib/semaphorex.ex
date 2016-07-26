defmodule Semaphorex do
  @auth_prefix "?auth_token="

  use HTTPoison.Base
  alias Semaphorex.Client

  def get(path, client) do
    http_request(:get, client, path)
  end

  defp auth_token(token) do
    @auth_prefix <> token
  end

  defp parse_json({:ok, %HTTPoison.Response{status_code: code, body: body}}) do
    %{status_code: code, body: Poison.Parser.parse(body, keys: :atoms)}
  end

  defp parse_json({:error, error}), do: {:error, error}

  defp http_request(method, client, path, body \\ "", options \\ []) do
    request(method, url(client, path), body, [], options)
      |> parse_json
  end

  defp url(%Client{auth_token: token, endpoint: endpoint}, path) do
    endpoint <> path <> auth_token(token)
  end
end
