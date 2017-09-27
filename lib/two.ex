defmodule Two do
    def main do
        fibo(1,2,[2,1])
    end

    def fibo(_,_,sequence,0) do
        IO.inspect sequence |> Enum.reverse()
    end

    def fibo(a,b,sequence) do
        cond do
            a >= 4000000 ->
                Enum.filter(sequence, fn(x) -> rem(x,2) == 0 end)
                    |> Enum.sum()
                    |> IO.puts()
            :else ->
                fibo(b,a + b,[a + b | sequence])
        end
    end
end
