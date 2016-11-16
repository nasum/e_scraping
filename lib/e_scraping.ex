defmodule EScraping do
  def run(url) do
    ret = HTTPoison.get! url
    %HTTPoison.Response{body: body} = ret

    body
    |> Floki.find("a")
    |> Floki.attribute("href")
  end
end
