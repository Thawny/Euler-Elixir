defmodule One do
    @moduledoc """
    Trouver tous les multiples de 3 et 5 < n et les additionner
    """

    def multiple_of_3_5?(n) do
        rem(n,3) == 0 || rem(n,5) == 0
    end

    def find_all_multiples(n) do
        Enum.filter(1..n-1, fn(x) -> multiple_of_3_5?(x) end)
    end

    def sum_list(list) do
        Enum.reduce(list, fn(x, acc) -> x + acc end)
    end

    def main(n) do
        find_all_multiples(n) |> sum_list()
    end

end
