defmodule Check do
    def tryCase(a,b,c) do
        case {a,b,c} do
            {1,2,3} -> IO.puts "1,2,3"
            {2,3,4} -> IO.put "2,3,4"
        end
    end

    def larger_than_three(n) when is_integer(n) do
        IO.puts n * 2
    end

    def larger_than_three(n) do
        IO.puts n
    end

    def do_something_with(x) when is_binary(x), do: IO.puts "Hello"
    def do_something_with(x) when is_integer(x), do: IO.puts x*x

    def larger_than_two?(n) do
        larger_than_two? = fn
                n when is_integer(n) and n > 2 -> IO.puts true
                n when is_integer(n) -> IO.puts false
        end
        larger_than_two?.(n)
    end

end

Check.do_something_with(3)
