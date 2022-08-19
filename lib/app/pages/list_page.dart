import 'package:first_app/app/components/menu_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final _inputController = TextEditingController();
  List<String> _list = <String>[];

  void _setList() {
    _list.add(_inputController.text);
    _inputController.clear();

    setState(() {
      _list = _list;
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
                style: TextStyle(fontSize: 16)),
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
                  onPressed: _setList,
                  child: Text('Salvar Nome'),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
                height: 500,
                child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: _list.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 50,
                        color: Colors.blue,
                        child: Center(child: Text('${_list[index]}')),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
