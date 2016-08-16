case File.read Path.expand("../words/Awords.csv") do
  {:ok, __} -> IO.puts "All is well you m fer"
  {:error, error} -> IO.puts "The error is #{error} #{Path.expand("../words/A Words.csv")}"
end

# IO.puts file_handle
