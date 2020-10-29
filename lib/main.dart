import 'package:atm_consultoria/cliente.dart';
import 'package:atm_consultoria/contato.dart';
import 'package:atm_consultoria/servico.dart';
import 'package:flutter/material.dart';

import 'empresa.dart';

void main() {
  runApp(AtmConsultoria());
}

class AtmConsultoria extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'ATM Consultoria'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 32),
                    child: Image.asset('images/logo.png'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Empresa()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset('images/menu_empresa.png'),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Servico()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset('images/menu_servico.png'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Cliente()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset('images/menu_cliente.png'),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Contato()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset('images/menu_contato.png'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
