

import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:teste/content.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DatabaseReference _dbRef = FirebaseDatabase.instance.ref();
  TextEditingController controller = TextEditingController();
  String textoHint = "Digite aqui ex: 5000";
  Color corHint = Colors.black;

  @override
  void initState() {
    super.initState();
    _checkMeta(); // Verifica se a meta já está preenchida no banco de dados
  }

  // Função para verificar se a meta já está preenchida
  Future<void> _checkMeta() async {
    final snapshot = await _dbRef.child('lucroMeta/metaMensal').get();

    if (snapshot.exists) {
      // Se a meta já existe, redireciona para a ContentPage
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => conteudo()),
      );
    } else {
      print('Meta ainda não preenchida, permanecendo na tela atual.');
    }
  }

  // Função para salvar a meta no banco de dados
  void _saveMeta(double valor) {
    _dbRef.child('lucroMeta/metaMensal').set({
      'meta': valor,
    }).then((_) {
      print('Meta salva com sucesso!');
      // Após salvar, redireciona para a página de conteúdo
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => conteudo()),
      );
    }).catchError((error) {
      print('Erro ao salvar meta: $error');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white54,
        centerTitle: true,
        title: Text(
          '',
          style: TextStyle(color: Colors.black45),
        ),
        elevation: 0,
        leading: GestureDetector(
          child: Icon(Icons.menu),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
                color: Colors.black45,
              ),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Seja bem-vindo",
                    style: TextStyle(color: Colors.white, fontSize: 25, fontFamily: 'roboto'),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Quanto gostaria de LUCRAR por mês?',
                    style: TextStyle(fontSize: 20, color: Colors.white, fontFamily: 'roboto'),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: controller,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      suffixIcon: Icon(Icons.attach_money_rounded),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.all(10),
                      hintText: textoHint,
                      hintStyle: TextStyle(color: corHint),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (controller.text.isEmpty) {
                        setState(() {
                          textoHint = "Digite um valor válido";
                          corHint = Colors.red;
                        });
                      } else {
                        double valor = double.parse(controller.text);
                        _saveMeta(valor); // Salva a meta e redireciona
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      padding: EdgeInsets.all(20),
                    ),
                    child: Text("Continuar"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}