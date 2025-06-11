programa {
    inclua biblioteca Tipos --> m
    inclua biblioteca Texto --> t

    funcao inicio() {
        real n, verif, num, saida
        inteiro ano_nascimento, ano_atual, idade, dias_para_aniversario
        inteiro mes_nascimento, dia_nascimento, mes_atual, dia_atual

        faca {
            escreva("\nDigite 1 para a verificação de números:\n")
            escreva("Digite 2 para calcular a idade:\n")
            escreva("Digite 3 para calcular médias de números:\n")
            escreva("Digite 4 para ler um número inteiro:\n")
            escreva("Digite 5 para inverter um número de 3 dígitos:\n")
            escreva("Digite 6 para calcular a média de notas:\n")
            escreva("Digite 7 para converter Celsius para Fahrenheit:\n")
            escreva("Digite 8 para calcular o fatorial:\n")
            escreva("Digite 9 para verificar se um número é primo:\n")
            escreva("Digite 10 para contar vogais em uma string:\n")
            escreva("Digite 11 para exibir a tabuada:\n")
            escreva("Digite 12 para converter quilômetros para milhas:\n")
            escreva("Digite 13 para calcular um reajuste de 5%:\n")
            escreva("Digite 14 para calcular o IMC:\n")
            escreva("Digite 15 para calcular a idade em anos, meses, dias e semanas:\n")
            escreva("Digite 999 para sair:\n")
            leia(n)

            se (n == 1) {
                faca {
                    escreva("\nDigite um número:\n")
                    leia(num)

                    se (num > 0) {
                        escreva("\n", num, " = Positivo\n")
                    } senao {
                        escreva("\n", num, " = Negativo\n")
                    }

                    se (num % 2 == 0) {
                        escreva("\n", num, " = Par\n")
                    } senao {
                        escreva("\n", num, " = Ímpar\n")
                    }

                    verif = m.real_para_inteiro(num)

                    se (verif - num == 0) {
                        escreva(num, " = Inteiro\n")
                    } senao {
                        escreva(num, " = Fracionado\n")
                    }
                    escreva("\nDigite 999 para sair ou qualquer outro número para continuar:\n")
                    leia(saida)
                } enquanto (saida != 999)
            } senao se (n == 2) {
                escreva("\nDigite o ano de nascimento:\n")
                leia(ano_nascimento)
                escreva("Digite o mês de nascimento (1-12):\n")
                leia(mes_nascimento)
                escreva("Digite o dia de nascimento:\n")
                leia(dia_nascimento)

                escreva("Digite o ano atual:\n")
                leia(ano_atual)
                escreva("Digite o mês atual (1-12):\n")
                leia(mes_atual)
                escreva("Digite o dia atual:\n")
                leia(dia_atual)

                idade = ano_atual - ano_nascimento

                logico aniversario_ocorreu

                se (mes_atual > mes_nascimento) {
                    aniversario_ocorreu = verdadeiro
                } senao {
                    se ((mes_atual == mes_nascimento) e (dia_atual >= dia_nascimento)) {
                        aniversario_ocorreu = verdadeiro
                    } senao {
                        aniversario_ocorreu = falso
                    }
                }

                se (aniversario_ocorreu == falso) {
                    idade = idade - 1
                }

                dias_para_aniversario = 0

                se (mes_atual > mes_nascimento) {
                    dias_para_aniversario = (12 - mes_atual + mes_nascimento) * 30 + (dia_nascimento - dia_atual)
                } senao {
                    se (mes_atual == mes_nascimento) {
                        dias_para_aniversario = dia_nascimento - dia_atual
                    } senao {
                        dias_para_aniversario = (mes_nascimento - mes_atual) * 30 + (dia_nascimento - dia_atual)
                    }
                }

                escreva("\nIdade: ", idade, " anos\n")
                escreva("Faltam ", dias_para_aniversario, " dias para o próximo aniversário.\n")
            } senao se (n == 3) {
                inteiro i, k
                real numeros, soma = 0, media
                escreva("Quantos números você quer digitar para calcular a média:\n")
                leia(k)

                para (i = 1; i <= k; i++) {
                    escreva("Digite o ", i, "º número:\n")
                    leia(numeros)
                    soma = soma + numeros
                }
                media = soma / k
                escreva("Média = ", media, "\n")
            } senao se (n == 4) {
                inteiro numero
                escreva("Digite um número inteiro:\n")
                leia(numero)
                escreva("Você digitou: ", numero, "\n")
            } senao se (n == 5) {
                inteiro numero, centenas, dezenas, unidades
                escreva("Digite um número de 3 dígitos:\n")
                leia(numero)

                centenas = numero / 100
                dezenas = (numero % 100) / 10
                unidades = numero % 10

                escreva("Número lido: ", numero, "\n")
                escreva("Número invertido: ", unidades, dezenas, centenas, "\n")
            } senao se (n == 6) {
                real nota1, nota2, media
                escreva("Digite a primeira nota:\n")
                leia(nota1)
                escreva("Digite a segunda nota:\n")
                leia(nota2)
                media = (nota1 + nota2) / 2
                escreva("A média é: ", media, "\n")
            } senao se (n == 7) {
                real celsius, fahrenheit
                escreva("Digite a temperatura em Celsius:\n")
                leia(celsius)
                fahrenheit = (celsius * 9 / 5) + 32
                escreva("Temperatura em Fahrenheit: ", fahrenheit, "\n")
            } senao se (n == 8) {
                inteiro numero, fatorial = 1
                escreva("Digite um número inteiro positivo:\n")
                leia(numero)

                para (inteiro i = 1; i <= numero; i++) {
                    fatorial = fatorial * i
                }
                escreva("Fatorial de ", numero, " é: ", fatorial, "\n")
            } senao se (n == 9) {
                inteiro numero, i
                logico primo = verdadeiro
                escreva("Digite um número:\n")
                leia(numero)

                se (numero < 2) {
                    primo = falso
                } senao {
                    para (i = 2; i * i <= numero; i++) {
                        se (numero % i == 0) {
                            primo = falso
                            pare
                        }
                    }
                }

                se (primo) {
                    escreva(numero, " é primo.\n")
                } senao {
                    escreva(numero, " não é primo.\n")
                }
            } senao se (n == 10) {
                caracter vogais[] = {
      'a', 'á', 'à', 'â', 'ã',
      'e', 'é', 'è', 'ê', 
      'i', 'í', 'ì', 'î',
      'o', 'ó','ò', 'ô', 
      'u', 'ú', 'ù', 'û' 
    }
    cadeia palavra
    inteiro tamanho, quant=0

    escreva("Digite uma String para ver as vogais:\n ")
    leia(palavra)

    palavra = t.caixa_baixa(palavra)
    tamanho = t.numero_caracteres(palavra)

    para(inteiro i = 0; i < tamanho; i++){
      para(inteiro j = 0; j < 21; j++){
        se(t.obter_caracter(palavra, i) == vogais[j]){
          quant++
          pare
        }
      }
    }
    escreva("\nA palavra {",palavra,"} possui {",quant,"} vogais\n")

  
            } senao se (n == 11) {
                inteiro numero, i
                escreva("Digite um número para ver a tabuada:\n")
                leia(numero)

                para (i = 1; i <= 10; i++) {
                    escreva(numero, " x ", i, " = ", numero * i, "\n")
                }
            } senao se (n == 12) {
                real quilometros, milhas
                escreva("Digite a distância em quilômetros:\n")
                leia(quilometros)
                milhas = quilometros * 0.621371
                escreva("Distância em milhas: ", milhas, "\n")
            } senao se (n == 13) {
                real valor, reajuste
                escreva("Digite um valor:\n")
                leia(valor)
                reajuste = valor * 1.05
                escreva("Valor com reajuste de 5%: ", reajuste, "\n")
            } senao se (n == 14) {
                real peso, altura, imc
                escreva("Digite seu peso (kg):\n")
                leia(peso)
                escreva("Digite sua altura (m):\n")
                leia(altura)
                imc = peso / (altura * altura)

                se (imc < 18.5) {
                    escreva("Condição: Abaixo do peso\n")
                } senao se (imc >= 18.5 e imc < 25) {
                    escreva("Condição: Peso ideal – Parabéns!\n")
                } senao se (imc >= 25 e imc < 30) {
                    escreva("Condição: Levemente acima do peso\n")
                } senao se (imc >= 30 e imc < 35) {
                    escreva("Condição: Obesidade grau I\n")
                } senao se (imc >= 35 e imc < 40) {
                    escreva("Condição: Obesidade grau II - SEVERA\n")
                } senao {
                    escreva("Condição: Obesidade grau III – MÓRBIDA\n")
                }
            } senao se (n == 15) {
                inteiro ano_nascimento, ano_atual
                escreva("Digite o ano de nascimento:\n")
                leia(ano_nascimento)
                escreva("Digite o ano atual:\n")
                leia(ano_atual)

                idade = ano_atual - ano_nascimento
                escreva("Idade em anos: ", idade, "\n")
                escreva("Idade em meses: ", idade * 12, "\n")
                escreva("Idade em dias: ", idade * 365, "\n")
                escreva("Idade em semanas: ", (idade * 365) / 7, "\n")
            }
        } enquanto (n != 999)
    }
}
