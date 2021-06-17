
*** Settings ***
# Dentro do documentation estarão informações à respeito do arquivo de teste:
Documentation   Aqui estarão todos os exercícios do Prime Experts
...             focado em Imersão com Robot Framework

*** Test Case ***
Cenario: Loop
    [Tags]      COUNT
    Contador imprime no Console

Cenario: if dentro do for
    [Tags]      IF-LOOP
    Contador imprime no Console com If

Cenario: Imprimir pais no for
    [Tags]      Pais
    Imprimir nome dos paises


*** Keywords ***
Contador imprime no Console
    FOR     ${count}   IN RANGE    0   10
        Log To Console      ${count}
    END

Contador imprime no Console com If
    FOR     ${numero}   IN RANGE    0   10
        IF      '${numero}' == '5'
            Log To Console  Estou no número:'${numero}'
        ELSE IF     '${numero}' == '8'
            Log To Console  Estou no número:'${numero}'
        END
    END

Imprimir nome dos paises
    @{PAISES}       Create List     Brasil      Jamaica
    FOR     ${país}     IN      @{PAISES}
        Log To Console  Estou no seguinte país : ${país}
    END









