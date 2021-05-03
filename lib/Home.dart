import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("ATM consultoria"),
          backgroundColor: Colors.green,
        ),
        body: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("imagens/logo.png"),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () => print("tap in serviço"),
                      child: Container(
                        width: 100,
                        height: 100,
                        padding: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: ExactAssetImage('imagens/menu_servico.png'),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => print("tap in empresa"),
                      child: Container(
                        width: 100,
                        height: 100,
                        padding: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: ExactAssetImage('imagens/menu_empresa.png'),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () => print("tap in clientes"),
                      child: Container(
                        width: 100,
                        height: 100,
                        padding: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: ExactAssetImage('imagens/menu_cliente.png'),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => print("tap in contato"),
                      child: Container(
                        width: 100,
                        height: 100,
                        padding: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: ExactAssetImage('imagens/menu_contato.png'),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
