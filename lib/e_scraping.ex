defmodule EScraping do
  def run(url) do
    body = HTTPoison.get! url
  end
end
