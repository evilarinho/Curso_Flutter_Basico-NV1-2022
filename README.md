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


________________________________________________________________


________________________________________________________________


________________________________________________________________


________________________________________________________________


________________________________________________________________


________________________________________________________________


________________________________________________________________



 
