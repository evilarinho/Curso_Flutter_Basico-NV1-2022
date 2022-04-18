Curso Flutter Básico [NV1] - 2022
27 vídeos
Deivid Willyan | Flutter
https://youtube.com/playlist?list=PLRpTFz5_57cvo0CHf-AnojOvpznz8YO7S

________________________________________________________________
FLUTTER NV1 - [01] Instalação, Configuração e Primeiros Passos

________________________________________________________________
FLUTTER NV1 - [02] O que é o Flutter?

________________________________________________________________
FLUTTER NV1 - [03] O que é Widget?
 
________________________________________________________________ 
FLUTTER NV1 - [04] Flutter CLI - Interface de linha de comando

flutter doctor
flutter create
flutter devides
flutter run
flutter analyze
flutter build apk
flutter channel
flutter clean
flutter pub get
flutter test
flutter pub -h

________________________________________________________________
FLUTTER NV1 - [05] Primeiro contato com o Flutter

 
________________________________________________________________
FLUTTER NV1 - [06] Conhecendo os principais Widgets

Scaffold
appBar
Column
Container
Row
-----------------------------
Edilson
main.dart
Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: ThemeData(
      //  primaryColor: Colors.red,
      //),
      home: HomePage(),
    );
  }
-----------------------------
Edilson
home_page.dart
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Center(child: Text('AppBar')),
      ),

-----------------------------
Vinicius Resende
ThemeData não altera a cor da AppBar? Como alternativa tente:
ThemeData(primarySwatch: Colors.red)
Possivelmente alguma atualização no Material ou no próprio flutter
-------------------------
Jean Camargo
Ao tentar alterar o tema do MaterialApp utilizando -> theme: ThemeData(primaryColor: Colors.green,),  deu erro. Consegui utilizando:
theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green),
      ),
Deve ser alguma atualização.

________________________________________________________________
FLUTTER NV1 - [07] PageView Widget

>>> home_page.dart
// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //stl
  final PageController _pageController = PageController();
------------------------------------
 bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) => _pageController.jumpToPage(index),
>>>>>>>>>>

________________________________________________________________
FLUTTER NV1 - [08] Drawer Widget

ListView()
      UserAccountsDrawerHeader 
ListTile()
      Navigator.pop()

--------------------
Solução para as solicitações de 'const':
drawer: Drawer(
        child: ListView(
          children: [
            // ignore: prefer_const_constructors
            UserAccountsDrawerHeader(
              accountName: const Text('Deivid'),
              accountEmail: const Text('deivid@email.com'),
              currentAccountPicture: const CircleAvatar(
                backgroundColor: Colors.greenAccent,
                child: Text('D'),
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                _pageController.jumpToPage(0);
                Navigator.pop(context);
                setState(() {
                  indexBottonNavigationBar = 0;
                });
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                _pageController.jumpToPage(1);
                Navigator.pop(context);
                setState(() {
                  indexBottonNavigationBar = 1;
                });
              },
            ),
            ListTile(
              title: const Text('Item 3'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                _pageController.jumpToPage(2);
                Navigator.pop(context);
                setState(() {
                  indexBottonNavigationBar = 2;
                });
              },
            ),
          ],
        ),
      ),

________________________________________________________________
FLUTTER NV1 - [09] DESAFIO: TODO LIST

SizedBox
TextField()
    controller
ListView. builder
ListView.separated
     Divider()
ListTile
     OnLongPress
FloatinghActionButton
     Row

________________________________________________________________
FLUTTER NV1 - [10] Navegação entre Pages

-------------------------------------------------
Felipe Pitol
Só um adendo ao minuto 9:00.
Quem estiver tendo erro na hora de compilar, basta remover a linha >> home: OnePage()
Ele acusa erro de redundância quando esta setado home junto com Initial Route '/'
Deivid Willyan | Flutter
Ah show de bola, deve ser o lint desde que gravei essa aula
-------------------------------------------------

>>>main.dart
initialRoute: '/',
      routes: {
        '/': (_) => const OnePage(),
        '/twoPage': (_) => const TwoPage(),
      },

>>>one_page.dart
Utilizar o formato de pilha
Navigator.of(context).push

shild: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/twoPage', arguments: '123').then(
                  // ignore: avoid_print
                  (value) => print(value),
                );
          },
          child: const Text('Ir para Segunda Page'),
        )

if(Navigator.of.(context).canPop()) {
      Navigator.of.(context).pop('Retorno');
}

>>>two_page.dart
Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as String;

 child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop('Retorno');
          },
          child: Text('Voltar para a page anterior $args'),
        )


________________________________________________________________
FLUTTER NV1 - [11] Criação de Widgets Personalizados

________________________________________________________________

FLUTTER NV1 - [12] Gerência de estado sem package (nativa)  

-------------------
aula12a
setState()

-------------------
aula12b
ValueNotifier<int> valorAleatorio = ValueNotifier<int>(0);

minha dúvida publicada em 09/04/2022:
### DÚVIDA: Uma vez que a versão atual do Flutter (em abril/2022) exige a inclusão da 'const' para os objetos imutáveis da memória, a combinação do 'setState()' com 'const' poderia substituir todas as necessidades da utilização do  'ValueListenableBuilder()'  no Flutter ?

PESQUISA EXTRA
A única abordagem para gerenciar estados recomendado pelo Google e Flutterando: Provider.
Mas necessita estudar esses três:
Provider
setState
BLoC / Rx
MobX
Fonte: https://youtu.be/_F0GI2dnt-g - Como gerenciar estados no Flutter - OBRIGATÓRIO para iniciantes by Flutterando

________________________________________________________________
FLUTTER NV1 - [13] Consumindo API com a lib HTTP

-------------------
aula13a - ValueNotifier<int>
pub.dev
    http
    dio

pubspec.yaml
    dependecies:
    http: ^0.13.4

flutter pub get

import 'package:http/http.dart' as http;

Exemplos de APPIs
https://jsonplaceholder.typicode.com/
https://jsonplaceholder.typicode.com/posts
É do tipo GET porque acessa pelo navegador

-------------------
aula 13b - ValueNotifier<List<Post>>

class _OnePageState extends State<OnePage> {
  ValueNotifier<List<Post>> posts = ValueNotifier<List<Post>>([]);

-------------------
REVISÃO
Como chamar uma API:
 ValueNotifier<List<Post>> posts = ValueNotifier<List<Post>>([]);
  ValueNotifier<bool> inLoader = ValueNotifier<bool>(false);
Escutando mais de um evento:
 AnimatedBuilder(
                animation: Listenable.merge([posts, inLoader]),

Fazer um from Json a partir de um objeto:
class Post {
  final int userId;
  final int id;
  final String title;
  final String body;
  Post(this.userId, this.id, this.title, this.body);
  factory Post.fromJson(Map json) {
    return Post(json['userId'], json['id'], json['title'], json['body']);
  }

Porém nossa classe descrita no arquivo one_page.dart ficou com mais de 80 linhas devido a grande quantidade de regras (camadas de API, regras de montagem de objetos e regras de views, montagem da page. Na próxima será apresentado o MVC, e vamos conhecer como separar as responsabilidades.

________________________________________________________________
FLUTTER NV1 - [14] MVC Pattern: Organizando o projeto

/lib/main.dart
/lib/views/one_page.dart
/lib/views/two_page.dart
/lib/controllers/posts_controllers.dart
/lib/models/posts_model.dart

________________________________________________________________
FLUTTER NV1 - [15] Projeto: Splash Screen e Login Page

Criado Projeto: projeto01
E efetuado uma limpeza do pubspec.yaml

Objetivo:
Rever todos os conceitos já estudados desde as aulas de Dart até as últimas aulas de Flutter.
Esse desafio pode levar algumas aulas ou não. Nada a princípio muito planejado.
O objetivo é criar uma casca de uma aplicação com Splash Screen, com uma tela de login,  depois com uma tela que faz requisição para uma API, depois manipula essa resposta de dados, utilizando a mesma API JsonPlaceHolder já utilizada com os Posts.

________________________________________________________________
FLUTTER NV1 - [16] Projeto: LoginController e Navegação

Aprendeu criar uma lógica bem simples a principío mokando, mas no futuro vamos injetar um repositório e consumir uma API.

Fazer a alteração do nosso botão para LOADING.
Como fazer a alteração após o resultado com sucesso ou mostrar uma mensagem em caso de falha.

Na próxima aula vamos fazer algumas refatorações nessa page para seguir adiante.

________________________________________________________________


________________________________________________________________


________________________________________________________________



 
