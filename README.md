# Elixir Enum.each and throw Bug

This repository demonstrates a subtle issue when using `Enum.each` with `throw` in Elixir.  The example shows how `throw` unexpectedly halts execution within the `Enum.each` loop, not executing code after the `throw` statement in that iteration but continuing with other iterations.  The solution illustrates a more robust approach to handling such situations.

**Bug:** The original code throws an exception when it encounters the number 3. However, the `IO.puts("next")` statement is still executed, demonstrating a behavior that might not be immediately obvious.

**Solution:** The solution uses `Enum.map` and pattern matching to achieve the desired behavior without relying on `throw`. If the number 3 is encountered, it gracefully skips the `IO.puts` statement. The final list shows the processed values, excluding the problematic value of 3.