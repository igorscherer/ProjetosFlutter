// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

Map<String, String> paises = {
  "Brasil": "https://cdn-icons-png.flaticon.com/512/2151/2151295.png",
  "Uruguai": "https://cdn-icons-png.flaticon.com/512/330/330597.png",
  "Argentina": "https://cdn-icons-png.flaticon.com/512/330/330487.png",
  "Equador": "https://cdn-icons-png.flaticon.com/512/203/203054.png",
  "França": "https://cdn-icons-png.flaticon.com/512/197/197560.png",
  "Alemanha": "https://cdn-icons-png.flaticon.com/512/323/323332.png",
  "Espanha": "https://cdn-icons-png.flaticon.com/512/330/330557.png",
  "Japão": "https://cdn-icons-png.flaticon.com/512/197/197604.png",
  "Jamaica": "https://cdn-icons-png.flaticon.com/512/323/323331.png"
};

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: MyListView(),
    );
  }
}

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        title: const Icon(
          Icons.whatsapp,
          color: Color.fromARGB(255, 13, 255, 21),
          size: 60,
        ),
      ),
      body: ListView.builder(
          itemCount: paises.length,
          itemBuilder: (
            context,
            item,
          ) {
            return ListTile(
              leading:
                  Image(image: NetworkImage(paises.values.elementAt(item))),
              title: Text(paises.keys.elementAt(item)),
              subtitle: Text(" 51-9219291"),
              trailing: Icon(Icons.smartphone_outlined),
              onTap: () {
                final snackBar = SnackBar(
                    content: Text("Clicou no ${paises.keys.elementAt(item)}"),
                    duration: Duration(seconds: 1),
                    action:
                        SnackBarAction(label: "Desfazer", onPressed: () => {}));

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            );
          }),
    );
  }
}


