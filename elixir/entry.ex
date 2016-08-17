defmodule DollarWord do
  def compute(body) do
    list = String.split(body, "\n")
  end
end




case File.read Path.expand("../words/Awords.csv") do
  {:ok, body} -> DollarWord.compute(body)
  {:error, error} -> IO.puts "The error is #{error} #{Path.expand("../words/Awords.csv")}"
end

# IO.puts file_handle
