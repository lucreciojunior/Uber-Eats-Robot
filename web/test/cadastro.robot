*** Settings ***
Documentation    Entra na pagina de cadatro para Preencher os dados do entregador.

Library     Browser
Library    Collections

Resource    ../resource/keywords.resource

*** Test Cases ***
Preencher os campos do entregador
#nome - cpf - emal - whatsapp
    Access homepage
    Register delivery data   junior    00100200345    ljh.jj@gmail.com     81978254751
    Register delivery address    54759475    332    casa
    Click on search
    Click on the bike
    Upload photo
    Click register courier
    Check message

    Sleep    5

Preencher sem o campo NOME COMPLETO
    
    Access homepage
    Register delivery data    ${EMPTY}    00133564635    ljh.jj@gmail.com    8179124512
    Register delivery address    54759475    332    casa
    Click on search
    Click on the bike
    Upload photo
    Click register courier
    Error alert    É necessário informar o nome

    Sleep    2

Preencher sem o campo CPF

    Access homepage
    Register delivery data    juniorbrisa    ${EMPTY}    ljh.jj@gmail.com    8179124512
    Register delivery address    54759475    332    casa
    Click on search
    Click on the bike
    Upload photo
    Click register courier
    Error alert    É necessário informar o CPF

    Sleep    2

Preencher com o CPF INVALIDO
    
    Access homepage
    Register delivery data    juniorbrisa    0013255    ljh.jj@gmail.com    8179124512
    Register delivery address    54759475    332    casa
    Click on search
    Click on the bike
    Upload photo
    Click register courier
    Error alert    Oops! CPF inválido

    Sleep    2

Preencher sem o campo EMAIL
    Access homepage
    Register delivery data    juniorbrisa    00133564635    ${EMPTY}    8179124512
    Register delivery address    54759475    332    casa
    Click on search
    Click on the bike
    Click register courier
    Error alert    É necessário informar o email

    Sleep    2

Preencher sem o campo CEP
    Access homepage
    Register delivery address    ${EMPTY}    363    CASA
    Click on search
    Error alert    Informe um CEP válido

    Sleep    2

Preencher o fomulario e NÃO CLICAR NO METODO DE ENTREGA
    Access homepage
    Register delivery data   junior    00100200345    ljh.jj@gmail.com     81978254751
    Register delivery address    54759475    332    casa
    Click on search
    Click register courier
    Error alert    Selecione o método de entrega
    
    Sleep    2

Preencher os fomularios MENOS UPLOAD DA FOTO
    Access homepage
    Register delivery data   junior    00100200345    ljh.jj@gmail.com     81978254751
    Register delivery address    54759475    332    casa
    Click on search
    Click on the bike
    Click register courier
    Error alert    Adicione uma foto da sua CNH

    Sleep    2






    
    
    


    








