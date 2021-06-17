*** Settings ***
# Dentro do documentation estarão informações à respeito do arquivo de teste:
Documentation   Criar uma keyword para formar um email

*** Variable ***
# Variável do Tipo Dicionário:
&{PESSOA}      
...         nome=Kellen     
...         sobrenome=Mohamed       
...         idade=35

*** Test Case ***
Cenario: Imprimir Email
    [Tags]          EMAIL
    ${EMAIL}        Criar email  Kellen  Fernandez  35
    Log To Console  ${EMAIL}


*** Keywords ***

# A Keyword abaixo recebe os argumentos, usa os mesmos em variáveis e retorna o resultado na variavel SOMA: 
Criar email
    [Arguments]     ${NOME}      ${SOBRENOME}     ${IDADE}
    ${EMAIL}        Catenate     ${NOME}_${SOBRENOME}_${IDADE}@robot.com
    [Return]        ${EMAIL}