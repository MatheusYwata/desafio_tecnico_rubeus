*** Variables ***

# ==============================
# BANNER
# ==============================

${BTN_SAIBA_MAIS_CERT}      //a[@id='i7r4lj']
${BTN_QUERO_ME_CERTIFICAR}  //a[@id='ivw5ng']

# ==============================
# FORMULÁRIO
# ==============================

${INPUT_NOME_CERT}          //input[@name='pessoa.nome']
${INPUT_EMAIL_CERT}         //input[@placeholder='email@exemplo.com']
${INPUT_TELEFONE_CERT}      //input[@placeholder='(11) 96123-4567']

${BTN_CONCLUIR}              //button[@id='rbBtnNext']

${MSG_BASE_LEGAL_CERT}      //li[normalize-space()='É necessário informar a base legal']

${INDICADOR_ETAPA_1}    xpath=//span[contains(@class,'rbStageCounter') and contains(normalize-space(.),'1 / 2')]

# ==============================
# RODAPÉ
# ==============================

${BTN_QUERO_ME_CERTIFICAR_RODAPE}    //a[@id='ixy3u1']
                              
${ICON_YOUTUBE}             //a[@id='ifpwp7']

${SAIBA_MAIS_OUTROS_CURSOS}    //div[@id='irx8jg']//p//span//span[contains(text(),'Saiba mais')]