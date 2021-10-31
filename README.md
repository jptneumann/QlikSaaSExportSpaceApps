# QlikSaaSExportSpaceApps

![SaaS Export Apps](https://www.infrascale.com/wp-content/uploads/blog-img-SaaS-1200x628-1.jpg "SaaS Export Apps")

Desenvolver aplicativos no ambiente `Qlik Sense SaaS`  pode exigir fazer uma cópia local completa dos aplicativos de um determinado `Space` de desenvolvimento, seja para fazer um backup ou até mesmo um controle de versionamento :octocat: . 

**QlikSaaSExportSpaceApps**, é um script para Windows desenvolvido para simplificar a exportação de todos os aplicativos de um determinado **Space** do QLik Sense SaaS. 

Foi desenvolvido usando o `Qlik-CLI`  (comando **qlik**) que é um CLI gerado diretamente a partir das especificações das API´s do Qlik Sense. Ele permite que você faça de forma simples qualquer tarefa em relação ao Qlik Sense SaaS, aproveitando todas as suas APIs públicas.

Está aplicação também poderá ser alterada para fazer exportação em ambiente on-premise bem como adaptado para ambiente MAC/Linux. Vide documentação do `Qlik-CLI`.

Para maiores informações, consulte:
 * https://qlik.dev/tutorials/get-started-with-qlik-cli
 * https://qlik.dev/libraries-and-tools/qlik-cli

### Requisitos

#### qlik-cli
Ter instalado o **qlik-cli** e o [contexto](https://qlik.dev/libraries-and-tools/qlik-cli#get-started "contexto") configurado por intermédio de uma *API-key*. Para download e maiores informações: [qlik-cli](https://github.com/qlik-oss/qlik-cli/releases "qlik-cli").

#### jq
o **jq** é um processador JSON leve e flexível. O jq é escrito em C portátil, e tem zero dependências de tempo de execução. Você pode baixar um único binário. Para download e maiores informações: [jq](https://stedolan.github.io/jq/download/ "jq")

### Instalação
Para instalar, basta seguir os requisitos acima, e instalar or arquivo **QlikSaaSExportSpaceApps.bat** em um local de sua preferência e executar.

#### Sintaxe
`QlikSaaSExportSpaceApps.bat [SpaceName] [--nodata] [--help]`

**Parâmetros:**
<pre>
Space Name - Nome do Space onde residem os apps para exportação. Não informado usará o default do script
--nodata - efetuar exportação do app sem dados
--help - Tela de ajuda
</pre>

###Diagrama de Sequência
                    
![QlikSaaSExportSpaceApps Diagram](https://github.com/jptneumann/QlikSaaSExportSpaceApps/blob/main/QlikSaaSExportSpaceAppsDiag.jpg?raw=true "QlikSaaSExportSpaceApps Diagram")

**License**
QlikSaaSExportSpaceApps segue a [Licença MIT](https://github.com/jptneumann/QlikSaaSExportSpaceApps/blob/master/LICENSE "Licença MIT"), qualquer pessoa pode usar livremente.

## English README

Developing apps in the Qlik Sense SaaS environment may require making a full local copy of the apps from a given Development Space, either for backup or even version control. :octocat:

**QlikSaaSExportSpaceApps**, is a script for Windows designed to simplify the export of all apps from a given Space from QLik Sense SaaS. 

It was developed using `Qlik-CLI` (**qlik** command) which is a CLI generated directly from Qlik Sense API's specifications. It allows you to easily do any task in relation to Qlik Sense SaaS, taking advantage of all its public APIs.

Está aplicação também poderá ser alterada para fazer exportação em ambiente on-premise bem como adaptado para ambiente MAC/Linux. Vide documentação do `Qlik-CLI`.

This application can also be changed to export in on-premise environment as well as adapted to MAC/Linux environment. See `Qlik-CLI` documentation.

For more information, see:
 * https://qlik.dev/tutorials/get-started-with-qlik-cli
 * https://qlik.dev/libraries-and-tools/qlik-cli

### Requirements

#### qlik-cli
Having installed **qlik-cli** and configured [context](https://qlik.dev/libraries-and-tools/qlik-cli#get-started "context") through an API-key. For download and more information: [qlik-cli](https://github.com/qlik-oss/qlik-cli/releases "qlik-cli").

#### jq
**jq** is a lightweight and flexible JSON processor. jq is written in portable C, and has zero runtime dependencies. You can download a single binary. For download and more information: [jq](https://stedolan.github.io/jq/download/ "jq")

### Installation
To install, just follow the requirements above, and install the **QlikSaaSExportSpaceApps.bat** file in a location of your choice and run.

#### Sintax
`QlikSaaSExportSpaceApps.bat [SpaceName] [--nodata] [--help]`

**Parameters:**
<pre>
Space Name - Name of the Space where the apps for export reside. Not informed will use script default
--nodata - Perform app export without data
--help - Help screen
</pre>


**License**
QlikSaaSExportSpaceApps follows the [MIT License](https://github.com/jptneumann/QlikSaaSExportSpaceApps/blob/master/LICENSE "MIT License"), anyone can use it freely.
