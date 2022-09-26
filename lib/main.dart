import 'package:flutter/material.dart';
import 'package:new_msn/segunda_tela.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(title: 'MSN'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.center,
              colors: [Color(0xff8cd8f8), Colors.white]),
        ),
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  child: Image.asset("assets/images/MSN.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  child: Image.asset(
                    "assets/images/entrar.png",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  child: Image.asset("assets/images/MSN_2.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 250),
                child: Text(
                  "Usuário",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 45, right: 45),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Insira seu e-mail"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 250),
                child: Text(
                  "Senha",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 45, right: 45),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Insira sua senha"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Esqueci minha senha",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      color: Color(0xff005dad),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 45, right: 45),
                child: ElevatedButton(
                  onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Tela2(),
                        ),
                      );
                  },
                  child: Text("Próximo"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color(0xff005dad)),
                    fixedSize: MaterialStateProperty.all(Size(300, 50)),
                  ),
                ),
              ),
              Row(
                children: [
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 105, top: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xfffbf3f1),
                            borderRadius: BorderRadius.circular(20)),
                        width: 50,
                        height: 50,
                        child:
                            Image.asset("assets/images/F-removebg-preview.png"),
                      ),
                    ),
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xfffbf3f1),
                            borderRadius: BorderRadius.circular(20)),
                        width: 50,
                        height: 50,
                        child: Image.asset("assets/images/G.JPG"),
                      ),
                    ),
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xfffbf3f1),
                            borderRadius: BorderRadius.circular(20)),
                        width: 50,
                        height: 50,
                        child: Image.asset("assets/images/APPLE.JPG"),
                      ),
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Quero me cadastrar",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      color: Color(0xff005dad),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
