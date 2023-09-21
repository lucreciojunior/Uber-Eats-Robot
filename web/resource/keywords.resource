*** Settings ***

Library    Browser


*** Keywords ***

Access homepage
    New Browser        headless=False    browser=chromium
    New Page           https://buger-eats.vercel.app/
    Click              css=strong >> text=Cadastre-se para fazer entregas

Register delivery data

    [Arguments]      ${nome}    ${cpf}    ${email}    ${contato}

    Fill Text    css=input[name=name]              ${nome}
    Fill Text    css=input[name=cpf]               ${cpf}
    Fill Text    css=input[name=email]             ${email}
    Fill Text    css=input[name=whatsapp]          ${contato}

Register delivery address

    [Arguments]    ${cep}    ${numero}    ${compl}

    Fill Text    css=input[name=postalcode]            ${cep}
    Fill Text    css=input[name=address-number]        ${numero}
    Fill Text    css=input[name=address-details]       ${compl}

Click on search
    Click        css=input[type=button] >> text=Buscar CEP

Click on the bike
    Click        css=span >> text=Moto

Upload photo
    Upload File By Selector    
    ...    css=input[type="file"]    C:\\robotjr\\uber-eats\\web\\test\\imagem\\cnh-digital.jpg

Click register courier
    Click    css=button >> text=Cadastre-se para fazer entregas

Check message
    Wait For Elements State    
    ...    css=div >> text=Recebemos os seus dados. Fique de olho na sua caixa de email, pois e em breve retornamos o contato.

Error alert
    [Arguments]    ${alert}
    Wait For Elements State    css=div span >> text=${alert}


