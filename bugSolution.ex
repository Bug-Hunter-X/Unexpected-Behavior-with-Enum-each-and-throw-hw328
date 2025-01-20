```elixir
list = [1, 2, 3, 4, 5]

result = Enum.map(list, fn
  3 -> nil
  x -> IO.puts(x); x
end)

IO.inspect(result)
```