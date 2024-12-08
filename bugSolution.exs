```elixir
list = [1, 2, 3, 4, 5]

try do
  Enum.each(list, fn x ->
    if x == 3 do
      throw(:exit_requested)
    end
    IO.puts(x)
  end)
  IO.puts("Finished")
rescue
  :exit_requested -> IO.puts("Exit requested")
  _ -> IO.puts("An error occurred")
end
```