defmodule Four do
    def main do
        find_palindrome(999,999)
    end

    def find_palindrome(a,b) do
        if is_palindrome(a*b) do
            IO.puts a*b
        else
            IO.puts "#{a} #{b} #{a*b}"
            find_palindrome(b,a - 1)
        end
    end

    def is_palindrome(a) do
        Integer.to_string(a) == Integer.to_string(a) |> String.reverse()
    end
end

defmodule Four.Bis do
    def main do
        find_palindrome(998001)
    end

    def find_palindrome(a) do
        if is_palindrome(a) do
            IO.puts a
        else
            find_palindrome(a - 1)
        end
    end

    def is_palindrome(a) do
        Integer.to_string(a) == Integer.to_string(a) |> String.reverse()
    end
end
