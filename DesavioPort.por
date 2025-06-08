programa {
    funcao inicio() {
        inteiro n, i, a, b, proximo

        escreva("Digite quantos números da sequência de Fibonacci deseja: ")
        leia(n)

        a = 0
        b = 1

        se (n >= 1) {
            escreva(a, " ")
        }
        se (n >= 2) {
            escreva(b, " ")
        }

        para (i = 3; i <= n; i++) {
            proximo = a + b
            escreva(proximo, " ")
            a = b
            b = proximo
        }
    }
}
