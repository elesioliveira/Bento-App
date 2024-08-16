README - Bento App
//English
Project Name: Bento App

Description:
Bento App is designed to consume the Quintanda e-commerce, offering a variety of natural and organic products. The app is structured using a well-organized architecture to ensure scalability and maintainability.

Architecture Overview:

DESIGN SYSTEM: All system configurations are stored here.
FEATURE: This directory contains the componentization, organized by ATOMS, MOLECULES, and ORGANISMS.
UTILS: Holds mock data simulating API JSON responses.
MODEL: Contains the ENTITY definitions.
PROVIDERS: Used for injecting all controllers into the MAIN file.
SERVICES: Contains tools and utilities necessary for the app’s operation.
VIEW (PAGES): Each page in this directory has its own REPOSITORY, CONTROLLER, and VIEW.
State Management:
State management is handled natively using ChangeNotifier, with a focus on decoupling components and ensuring the app can scale efficiently.

Performance Optimization:
Every aspect of the app, including second-by-second, millisecond-by-millisecond configurations, and research, was thoroughly tested to enhance the app's performance.

//Português
Nome do Projeto: Bento App

Descrição:
O Bento App foi desenvolvido para consumir o e-commerce Quintanda, que oferece uma variedade de produtos naturais e orgânicos. O aplicativo segue uma arquitetura bem organizada, garantindo escalabilidade e fácil manutenção.

Visão Geral da Arquitetura:

DESIGN SYSTEM: Todas as configurações do sistema estão armazenadas aqui.
FEATURE: Este diretório contém a componentização, organizada em ÁTOMOS, MOLÉCULAS e ORGANISMOS.
UTILS: Armazena dados mockados simulando respostas de API em JSON.
MODEL: Contém as definições de ENTIDADE.
PROVIDERS: Utilizado para injetar todos os controladores no arquivo MAIN.
SERVICES: Contém ferramentas e utilitários necessários para o funcionamento do aplicativo.
VIEW (PAGES): Cada página neste diretório possui seu próprio REPOSITÓRIO, CONTROLADOR e VISUALIZAÇÃO.
Gerenciamento de Estado:
O gerenciamento de estado é feito nativamente usando ChangeNotifier, com foco no desacoplamento de componentes e garantindo que o aplicativo possa escalar de forma eficiente.

Otimização de Desempenho:
Cada aspecto do aplicativo, incluindo configurações de segundo em segundo, milissegundo a milissegundo, foi minuciosamente testado para melhorar o desempenho do app.
