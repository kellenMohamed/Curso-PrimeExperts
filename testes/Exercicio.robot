*** Settings ***
# Dentro do documentation estarão informações à respeito do arquivo de teste:
Documentation   Aqui estarão todos os exercícios do Prime Experts
...             focado em Imersão com Robot Framework

*** Variable ***
# Variável Simples:
${NOME}         Kellen Mohamed

# Variável do Tipo Dicionário:
&{PESSOA}      
...         nome=Kellen     
...         sobrenome=Mohamed       
...         idade=35

&{PESSOA2}      
...         nome=Ralni     
...         sobrenome=Fernandez       
...         idade=35
...         sexo=M     
...         TipoSanguineo=AB       
...         endereco=Rua: Hugo

#Variável do Tipo Lista:
@{FRUTAS}   
...         banana      
...         maçã    
...         laranja     
...         pêra    
...         uva

*** Test Case ***
Cenario: Imprimir o Dicionario
    # Imprimir a variável dicionário no console:
    Log To Console      ${PESSOA.nome}
    Log To Console      ${PESSOA.idade}

Cenario: Imprimir o Dicionario 2
    [Tags]              TESTE
    # Imprimir a segunda variável do tipo Dicionário no console:
    Log To Console      Nome: ${PESSOA2.nome}
    Log To Console      Sobrenome: ${PESSOA2.sobrenome}
    Log To Console      idade: ${PESSOA2.idade}
    Log To Console      ${PESSOA2.sexo}
    Log To Console      ${PESSOA2.TipoSanguineo}
    Log To Console      ${PESSOA2.endereco}

Cenario: Imprimir a Lista de frutas
    Log To Console      ${FRUTAS[0]}    
    Log To Console      ${FRUTAS[1]}    
    Log To Console      ${FRUTAS[3]}    
    Log To Console      ${FRUTAS[4]}    

Cenario: Realizar Somar
    [Tags]          SOMA
    ${RESULTADO}    Somar dois numeros  12  7
    Log To Console  ${RESULTADO}

Cenario: Realizar Somar - exemplo 2
    [Tags]          SOMA2
    ${RESULTADO}    Somar dois numeros "13" e "11"
    Log To Console  ${RESULTADO}


# A Keyword abaixo recebe os argumentos, usa os mesmos em variáveis e retorna o resultado na variavel SOMA: 
Somar dois numeros
    [Arguments]     ${NUM_A}    ${NUM_B}
    ${SOMA}         Evaluate    ${NUM_A}+${NUM_B}
    [Return]        ${SOMA}

Somar dois numeros "${NUM_A}" e "${NUM_B}"
    ${SOMA}         Evaluate    ${NUM_A}+${NUM_B}
    [Return]        ${SOMA}
