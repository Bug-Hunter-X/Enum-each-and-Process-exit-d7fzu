# Elixir Enum.each and Process.exit

This example demonstrates a potential issue with using `Process.exit` inside an `Enum.each` function.  `Enum.each` does not handle exceptions within its callback function in the same way as other functions like `Enum.map` or `Enum.reduce`. When an exception occurs, the iteration stops abruptly, and any cleanup or subsequent actions are not executed.

This can lead to unexpected behavior and difficult-to-debug problems. The solution provides safer alternatives to handle potential exceptions or termination within enumerable functions.
