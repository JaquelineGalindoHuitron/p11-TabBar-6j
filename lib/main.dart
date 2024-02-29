import 'package:flutter/material.dart';

void main() => runApp(AppTabBar());

class AppTabBar extends StatelessWidget {
  const AppTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ejemplo TabBar",
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: MiPaginaInicial(),
    );
  }
}

class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
}

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("TabBar Jaqueline Galindo"),
            bottom: TabBar(tabs: [
              Tab(
                text: "Spa",
                icon: Icon(Icons.add_alert),
              ),
              Tab(
                text: "Contac",
                icon: Icon(Icons.call_missed),
              ),
              Tab(
                text: "Nosotro",
                icon: Icon(Icons.people_alt_rounded),
              ),
              Tab(
                text: "ubica",
                icon: Icon(Icons.location_city_sharp),
              ),
            ] //texto icono
                ),
          ),
          body: TabBarView(
            children: const <Widget>[
              Center(
                child: Text(
                  "Alerta",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                ),
              ),
              Center(
                child: Text("Opcion2",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 50)),
              ),
              Center(
                child: Text(
                  "Opcion 3",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                ),
              ),
              Center(
                child: Text(
                  "Opcion 4",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                ),
              ),
            ],
          ),
        ));
  }
}
