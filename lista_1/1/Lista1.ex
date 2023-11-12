defmodule Lista1 do
    def quatro_iguais(a, b, c, d) do
        a == b && b == c && c == d
    end

    def quantos_iguais(a, b, c) do
        cond do
            a == b && b == c -> 3
            a == b ||  a == c || b == c -> 2
            true -> 0
        end
    end

    def tres_iguais(a,b,c) do
        a == b && b == c
    end

    def todos_diferentes(a, b, c) do
        cond do
            a != b && a != c && b != c -> true
            true -> false
        end
    end

    def quantos_iguais_2(a, b, c) do
        cond do
            todos_diferentes(a, b, c) -> 0
            tres_iguais(a, b, c) -> 3
            true -> 2
        end
    end

    def elevado_dois(n) do
       n * n
    end

    def elevado_quatro(n) do
        elevado_dois(n) * elevado_dois(n)
    end

    def palidromo?(string) do
       String.reverse(string) == string
    end

    def verifica_triangulo(a, b, c), do: a + c > b

    def sinal(n) do
        cond do
            n < 0 -> -1
            n > 0 -> 1
            n == 0 -> 0
        end
    end

    def menor(a, b) do
        cond do
            a >= b -> b
            b > a -> a
        end
    end

    def menor_tres(a, b, c) do
        menor((menor(a, b)), c)
    end


end
