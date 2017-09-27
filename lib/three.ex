defmodule Three do
    def main(n) do
        find_all_multiples(n)
    end

    def is_divisible_by(numb, by) do
        rem(numb, by) == 0
    end

    def find_all_multiples(numb) do
        find_all_multiples(numb, 2, [])
    end

    def find_all_multiples(numb, tryBy, multiples) do
        if numb != 1 do
            if is_divisible_by(numb, tryBy) do
                find_all_multiples(round(numb / tryBy), 2, [ tryBy | multiples])
            else
                find_all_multiples(numb, tryBy + 1, multiples)
            end
        else
            Enum.max(multiples) |> IO.puts() 
        end
    end

end
