import 'package:atm_consultoria/HomeClientes.dart';
import 'package:atm_consultoria/HomeEmpresa.dart';
import 'package:atm_consultoria/HomeServicos.dart';
import 'package:flutter/material.dart';

import 'HomeContatos.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _goToCompany() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeEmpresa()));
  }

  void _goToClient() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeClientes()));
  }

  void _goToContact() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeContatos()));
  }

  void _goToService() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeServicos()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("ATM consultoria"),
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
                      onTap: () => _goToService(),
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
                      onTap: () => _goToCompany(),
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
                      onTap: () => _goToClient(),
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
                      onTap: () => _goToContact(),
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
