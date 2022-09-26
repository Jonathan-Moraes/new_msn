import 'package:flutter/material.dart';
import 'main.dart';

class Tela2 extends StatelessWidget {
  const Tela2({Key? key}) : super(key: key);

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
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 150,
                  width: 150,
                  child: Image.asset(
                      "assets/images/285283258_5081708098550494_7522167105660576163_n.jpg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  child: Image.asset(
                      "assets/images/Insira_seu_status-removebg-preview.png"),
                ),
              ),
              InkWell(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 45, right: 45, bottom: 10),
                  child: Container(
                    child: Image.asset("assets/images/Online.JPG"),
                  ),
                ),
              ),
              InkWell(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 45, right: 45, bottom: 10),
                  child: Container(
                    child: Image.asset("assets/images/Ocupado.JPG"),
                  ),
                ),
              ),
              InkWell(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 45, right: 45, bottom: 10),
                  child: Container(
                    child: Image.asset("assets/images/Ausente.JPG"),
                  ),
                ),
              ),
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.only(left: 45, right: 45, bottom: 10),
                  child: Container(
                    child: Image.asset("assets/images/Definir Status.JPG"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 45, right: 45),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Entrar"),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xff005dad)),
                    fixedSize: MaterialStateProperty.all(Size(300, 50)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 45, right: 45),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => MyApp(),
                      ),
                    );
                  },
                  child: Text("Voltar"),
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Color(0xff005dad)),
                    fixedSize: MaterialStateProperty.all(Size(300, 50)),
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
