#  Desafio Técnico – Automação de Testes (Rubeus)

---
## Objetivo

Este projeto apresenta a análise de qualidade e a automação de testes funcionais para duas páginas disponibilizadas no desafio:

- Página Home / Institucional (/site)
- Página de Certificação (/certificacao)

O objetivo foi identificar problemas funcionais, inconsistências visuais e falhas de usabilidade, além de automatizar os fluxos críticos utilizando Robot Framework + SeleniumLibrary.

---

## Estratégia de Testes

A abordagem adotada foi baseada em:

- Análise funcional dos principais fluxos de conversão
- Priorização por impacto ao usuário (Alta, Média e Baixa)
- Classificação conforme critério fornecido (Correção, Melhoria e Nova funcionalidade)
- Separação entre problemas de Utilidade, Usabilidade e Desejabilidade

Foram priorizados para automação:

- Fluxos críticos de formulário
- CTAs principais
- Redirecionamentos incorretos
- Bloqueios de navegação

---

## Estratégia de Automação

A automação foi estruturada seguindo boas práticas:

- Organização por domínio (Site e Certificação)
- Separação de keywords reutilizáveis
- Centralização de variáveis
- Estrutura modular e escalável
- Uso de padrão BDD para legibilidade dos cenários

A estrutura foi pensada visando escalabilidade e manutenção futura, permitindo fácil expansão para novos fluxos e cenários.

---

##  Estrutura do Projeto

Desafio_Tecnico_Rubeus/


common/
pages/
...certificacao/
...site/
variables/
requirements.txt
README.md

---

##  Tecnologias Utilizadas

- Python 3.10.11
- Robot Framework
- SeleniumLibrary
- Selenium WebDriver
- ChromeDriver

---

##  Escopo Automatizado

###  Página Home / Institucional
- Envio de formulário
- Validação da mensagem de erro “É necessário informar a base legal”
- Verificação de CTA não funcional

###  Página de Certificação
- Validação de fluxo de inscrição
- Verificação de bloqueio da etapa 2
- Validação de botão sem atributo href
- Redirecionamento incorreto do botão principal
- Verificação de comportamento de links e ícones do rodapé

---

##  Como Executar o Projeto

###  Criar ambiente virtual (recomendado)

Windows:
python -m venv venv
venv\Scripts\activate

Mac/Linux:
python3 -m venv venv
source venv/bin/activate

---

###  Instalar dependências

pip install -r requirements.txt

---

###  Executar todos os testes

robot --outputdir results pages

---

##  Relatórios

Após a execução, os relatórios estarão na pasta:

results/

Arquivos gerados:
- log.html
- report.html
- output.xml

---


##  Possíveis Evoluções

- Integração com pipeline CI/CD
- Execução headless em ambiente containerizado
- Inclusão de testes de regressão automatizados
- Implementação de Page Object Pattern completo

---

## Autor

Matheus Hiroshi de Oliveira Ywata