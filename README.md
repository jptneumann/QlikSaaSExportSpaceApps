# QlikSaaSExportSpaceApps

![SaaS Export Apps](https://www.infrascale.com/wp-content/uploads/blog-img-SaaS-1200x628-1.jpg "SaaS Export Apps")

Desenvolver aplicativos no ambiente `Qlik Sense SaaS`  pode exigir fazer uma copia completa dos aplicativos de um determinado `Space` de desenvovimento, seja para fazer um backup ou até mesmo um controle de versionamento :octocat: . 

**QlikSaaSExportSpaceApps**, é um script para Windows desenvolvido para simplificar a exportação de todos os aplicativos de um determinado **Space** do QLik Sense SaaS. 

Foi desenvolvido usando o `Qlik-CLI`  (comando **qlik**) que é um CLI gerado diretamente a partir das especificações das API´s do Qlik Sense. Ele permite que você faça de forma simples qualquer tarefa em relação ao Qlik Sense SaaS, aproveitando todas as suas APIs públicas.

Está aplicação também poderá ser alterada para fazer exportação em ambiente on-premise bem como adaptado para ambiente MAC/Linux. Vide documentação do `Qlik-CLI`.

Para maiores informações, consulte:
 * https://qlik.dev/tutorials/get-started-with-qlik-cli
 * https://qlik.dev/libraries-and-tools/qlik-cli

### Requisitos

##### qlik-cli
Ter instalado o **qlik-cli** e o [contexto](https://qlik.dev/libraries-and-tools/qlik-cli#get-started "contexto") configurado por intermédio de uma *API-key*. Para download e maiores informações: [qlik-cli](https://github.com/qlik-oss/qlik-cli/releases "qlik-cli").

##### jq
o **jq** é um processador JSON leve e flexível. O jq é escrito em C portátil, e tem zero dependências de tempo de execução. Você pode baixar um único binário. Para download e maiores informações: [jq](https://stedolan.github.io/jq/download/ "jq")

##### Instalação
Para instalar, basta seguir os requisitos acima, e instalar or arquivo **QlikSaaSExportSpaceApps.bat** em um local de sua preferência e executar.

##### Sintax
`QlikSaaSExportSpaceApps.bat [SpaceName] [--nodata] [--help]`

**Parâmetros:**
<pre>
Space Name - Nome do Space onde residem os apps para exportação. Não informado usará o default do script
--nodata - efetuar exportação do app sem dados
--help - Tela de ajuda
</pre>

**License**
QlikSaaSExportSpaceApps segue a [Licença MIT](https://github.com/jptneumann/QlikSaaSExportSpaceApps/blob/master/LICENSE "Licença MIT"), qualquer pessoa pode usar livremente.