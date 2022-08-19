import 'package:first_app/app/components/menu_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _text = '';
  final _inputController = TextEditingController();

  void _setString() {
    setState(() {
      _text = _inputController.text;
      _inputController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Menu(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Digite seu nome',
            ),
            TextField(
                textAlign: TextAlign.center,
                controller: _inputController,
                style: TextStyle(fontSize: 16)
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              style: TextStyle(fontSize: 16),
              _text,
            ),
            SizedBox(
              height: 10,
            ),
            const Text(
              'Você pode alterar o seu contador, basta selecionar uma das opções',
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: _setString,
                  child: Text('Salvar Nome'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
