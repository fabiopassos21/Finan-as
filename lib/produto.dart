import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:teste/content.dart';

class AddProductPage extends StatefulWidget {
  @override
  _AddProductPageState createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  final DatabaseReference _dbRef = FirebaseDatabase.instance.ref();

  // Controladores de texto para capturar os valores
  TextEditingController _nameController = TextEditingController();
  TextEditingController _costController = TextEditingController();
  TextEditingController _valueController = TextEditingController();

  // Função para salvar os dados no Firebase
  Future<void> _saveProductToFirebase() async {
    String nome = _nameController.text;
    double custo = double.parse(_costController.text);
    double valorVenda = double.parse(_valueController.text);

    // Gera uma chave única para cada produto
 

    await _dbRef.child('users/001/produtos').set({
      'nome': nome,
      'custo': custo,
      'valorVenda': valorVenda,
    }).then((_) {
      print('Produto salvo com sucesso!');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Produto salvo com sucesso!')),
      );
    }).catchError((error) {
      print('Erro ao salvar produto: $error');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Erro ao salvar o produto!')),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Produto'),
        backgroundColor: Colors.white54,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Nome do Produto'),
            ),
            TextField(
              controller: _costController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Custo do Produto'),
            ),
            TextField(
              controller: _valueController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Valor de Venda'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveProductToFirebase,
              child: Text('Salvar Produto'),
            ),
               ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => conteudo())
                  );
              },
              child: Text('Salvar Produto'),
            ),
          ],
        ),
      ),
    );
  }
}