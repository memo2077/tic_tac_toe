import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Fludddder'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            children: [
              spielerHatGewonnen != 0
                  ? Text(
                      'Spieler $spielerHatGewonnen hat Gewonnen!!!',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 140, 255),
                          fontSize: 40),
                    )
                  : Text(''),
              hatVersagt
                  ? Text(
                      'Ihr habt Versagt!!1!!11!',
                      style: TextStyle(color: Colors.red, fontSize: 40),
                    )
                  : Text(''),
              Container(
                height: 360,
                width: 360,
                color: Colors.black,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.white,
                          margin: const EdgeInsets.all(10),
                          child: feld1 == 1
                              ? cross
                              : feld1 == 2
                                  ? circle
                                  : TextButton(
                                      child: Container(),
                                      onPressed: () {
                                        setState(() {
                                          klickAufEinFeld(feldNummer: 1);
                                        });
                                      },
                                    ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.white,
                          margin: const EdgeInsets.all(10),
                          child: feld2 == 1
                              ? cross
                              : feld2 == 2
                                  ? circle
                                  : TextButton(
                                      child: Container(),
                                      onPressed: () {
                                        setState(() {
                                          klickAufEinFeld(feldNummer: 2);
                                        });
                                      },
                                    ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.white,
                          margin: const EdgeInsets.all(10),
                          child: feld3 == 1
                              ? cross
                              : feld3 == 2
                                  ? circle
                                  : TextButton(
                                      child: Container(),
                                      onPressed: () {
                                        setState(() {
                                          klickAufEinFeld(feldNummer: 3);
                                        });
                                      },
                                    ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.white,
                          margin: const EdgeInsets.all(10),
                          child: feld4 == 1
                              ? cross
                              : feld4 == 2
                                  ? circle
                                  : TextButton(
                                      child: Container(),
                                      onPressed: () {
                                        setState(() {
                                          klickAufEinFeld(feldNummer: 4);
                                        });
                                      },
                                    ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.white,
                          margin: const EdgeInsets.all(10),
                          child: feld5 == 1
                              ? cross
                              : feld5 == 2
                                  ? circle
                                  : TextButton(
                                      child: Container(),
                                      onPressed: () {
                                        setState(() {
                                          klickAufEinFeld(feldNummer: 5);
                                        });
                                      },
                                    ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.white,
                          margin: const EdgeInsets.all(10),
                          child: feld6 == 1
                              ? cross
                              : feld6 == 2
                                  ? circle
                                  : TextButton(
                                      child: Container(),
                                      onPressed: () {
                                        setState(() {
                                          klickAufEinFeld(feldNummer: 6);
                                        });
                                      },
                                    ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.white,
                          margin: const EdgeInsets.all(10),
                          child: feld7 == 1
                              ? cross
                              : feld7 == 2
                                  ? circle
                                  : TextButton(
                                      child: Container(),
                                      onPressed: () {
                                        setState(() {
                                          klickAufEinFeld(feldNummer: 7);
                                        });
                                      },
                                    ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.white,
                          margin: const EdgeInsets.all(10),
                          child: feld8 == 1
                              ? cross
                              : feld8 == 2
                                  ? circle
                                  : TextButton(
                                      child: Container(),
                                      onPressed: () {
                                        setState(() {
                                          klickAufEinFeld(feldNummer: 8);
                                        });
                                      },
                                    ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.white,
                          margin: const EdgeInsets.all(10),
                          child: feld9 == 1
                              ? cross
                              : feld9 == 2
                                  ? circle
                                  : TextButton(
                                      child: Container(),
                                      onPressed: () {
                                        setState(() {
                                          klickAufEinFeld(feldNummer: 9);
                                        });
                                      },
                                    ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        reset();
                      });
                    },
                    icon: Icon(Icons.restore_rounded),
                    iconSize: 50,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}

Icon cross = const Icon(
  Icons.close,
  color: Colors.cyan,
  size: 90,
);

Icon circle = const Icon(
  Icons.circle_outlined,
  color: Colors.amber,
  size: 80,
);

int spielerDerDranIst = 1;
int spielerHatGewonnen = 0;
bool hatVersagt = false;

int feld1 = 0; // 0 Wenn kein spieler das feld hat
int feld2 = 0; // 1 Wenn Spier 1 das feld hat
int feld3 = 0; // 2 Wenn Spier 2 das feld hat
int feld4 = 0;
int feld5 = 0;
int feld6 = 0;
int feld7 = 0;
int feld8 = 0;
int feld9 = 0;

void klickAufEinFeld({required int feldNummer}) {
  if (spielerHatGewonnen != 0) {
    return;
  }
  if (feldNummer == 1) {
    feld1 = spielerDerDranIst;
  }
  if (feldNummer == 2) {
    feld2 = spielerDerDranIst;
  }
  if (feldNummer == 3) {
    feld3 = spielerDerDranIst;
  }
  if (feldNummer == 4) {
    feld4 = spielerDerDranIst;
  }
  if (feldNummer == 5) {
    feld5 = spielerDerDranIst;
  }
  if (feldNummer == 6) {
    feld6 = spielerDerDranIst;
  }
  if (feldNummer == 7) {
    feld7 = spielerDerDranIst;
  }
  if (feldNummer == 8) {
    feld8 = spielerDerDranIst;
  }
  if (feldNummer == 9) {
    feld9 = spielerDerDranIst;
  }

  hatGewonnen();
  hastVersagt();

  if (spielerDerDranIst == 1) {
    spielerDerDranIst = 2;
    return;
  }
  if (spielerDerDranIst == 2) {
    spielerDerDranIst = 1;
    return;
  }
}

void hatGewonnen() {
  if (feld1 != 0 && feld1 == feld2 && feld2 == feld3) {
    win();
  }
  if (feld4 != 0 && feld4 == feld5 && feld5 == feld6) {
    win();
  }
  if (feld7 != 0 && feld7 == feld8 && feld8 == feld9) {
    win();
  }
  if (feld1 != 0 && feld1 == feld5 && feld5 == feld9) {
    win();
  }
  if (feld3 != 0 && feld3 == feld5 && feld5 == feld7) {
    win();
  }
  if (feld1 != 0 && feld1 == feld4 && feld4 == feld7) {
    win();
  }
  if (feld2 != 0 && feld2 == feld5 && feld5 == feld8) {
    win();
  }
  if (feld3 != 0 && feld3 == feld6 && feld6 == feld9) {
    win();
  }
}

void win() {
  spielerHatGewonnen = spielerDerDranIst;
}

void hastVersagt() {
  if (feld1 != 0 &&
      feld2 != 0 &&
      feld3 != 0 &&
      feld4 != 0 &&
      feld5 != 0 &&
      feld6 != 0 &&
      feld7 != 0 &&
      feld8 != 0 &&
      feld9 != 0 &&
      spielerHatGewonnen == 0) {
    hatVersagt = true;
  }
}

void reset() {
  spielerDerDranIst = 1;
  spielerHatGewonnen = 0;
  hatVersagt = false;

  feld1 = 0; // 0 Wenn kein spieler das feld hat
  feld2 = 0; // 1 Wenn Spier 1 das feld hat
  feld3 = 0; // 2 Wenn Spier 2 das feld hat
  feld4 = 0;
  feld5 = 0;
  feld6 = 0;
  feld7 = 0;
  feld8 = 0;
  feld9 = 0;
}
