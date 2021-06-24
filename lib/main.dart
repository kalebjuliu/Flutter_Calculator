
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String expression = "";
  String result = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF303445),
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 4, 18, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'ABACUS',
                      style: GoogleFonts.audiowide(
                          fontWeight: FontWeight.w900,
                          fontSize: 26,
                          color: Color(0xFF898c97)),
                    ),
                    Image.asset(
                      "assets/graphic_1.png",
                      scale: 1.7,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 4, 18, 0),
                child: Text(
                  '$expression',
                  style: GoogleFonts.spartan(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Color(0xFF868b95),
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              SizedBox(
                width: double.infinity,
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Image.asset(
                      "assets/background.png",
                      fit: BoxFit.fitWidth,
                      width: double.infinity,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18, 4, 18, 0),
                      child: Text(
                        '$result', softWrap: false, overflow: TextOverflow.fade,
                        style: GoogleFonts.spartan(
                          fontWeight: FontWeight.w700,
                          fontSize: 50,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    height: 80.0,
                    child: Text("7",
                        style: GoogleFonts.spartan(
                            fontWeight: FontWeight.bold, fontSize: 20.0)),
                    textColor: Colors.white,
                    onPressed: () {setState(() {
                      expression += "7";
                    });},
                  ),
                  MaterialButton(
                    height: 80.0,
                    child: Text("8",
                        style: GoogleFonts.spartan(
                            fontWeight: FontWeight.bold, fontSize: 20.0)),
                    textColor: Colors.white,
                    onPressed: () {setState(() {
                      expression += "8";
                    });},
                  ),
                  MaterialButton(
                    height: 80.0,
                    child: Text("9",
                        style: GoogleFonts.spartan(
                            fontWeight: FontWeight.bold, fontSize: 20.0)),
                    textColor: Colors.white,
                    onPressed: () {setState(() {
                      expression += "9";
                    });},
                  ),
                  MaterialButton(
                    height: 80.0,
                    child: Text("/",
                        style: GoogleFonts.spartan(
                            fontWeight: FontWeight.bold, fontSize: 20.0)),
                    textColor: Colors.white,
                    onPressed: () {setState(() {
                      expression += "/";
                    });},
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    height: 80.0,
                    child: Text("4",
                        style: GoogleFonts.spartan(
                            fontWeight: FontWeight.bold, fontSize: 20.0)),
                    textColor: Colors.white,
                    onPressed: () {setState(() {
                      expression += "4";
                    });},
                  ),
                  MaterialButton(
                    height: 80.0,
                    child: Text("5",
                        style: GoogleFonts.spartan(
                            fontWeight: FontWeight.bold, fontSize: 20.0)),
                    textColor: Colors.white,
                    onPressed: () {setState(() {
                      expression += "5";
                    });},
                  ),
                  MaterialButton(
                    height: 80.0,
                    child: Text("6",
                        style: GoogleFonts.spartan(
                            fontWeight: FontWeight.bold, fontSize: 20.0)),
                    textColor: Colors.white,
                    onPressed: () {setState(() {
                      expression += "6";
                    });},
                  ),
                  MaterialButton(
                    height: 80.0,
                    child: Text("X",
                        style: GoogleFonts.spartan(
                            fontWeight: FontWeight.bold, fontSize: 20.0)),
                    textColor: Colors.white,
                    onPressed: () {setState(() {
                      expression += "*";
                    });},
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    height: 80.0,
                    child: Text("1",
                        style: GoogleFonts.spartan(
                            fontWeight: FontWeight.bold, fontSize: 20.0)),
                    textColor: Colors.white,
                    onPressed: () {setState(() {
                      expression += "1";
                    });},
                  ),
                  MaterialButton(
                    height: 80.0,
                    child: Text("2",
                        style: GoogleFonts.spartan(
                            fontWeight: FontWeight.bold, fontSize: 20.0)),
                    textColor: Colors.white,
                    onPressed: () {setState(() {
                      expression += "2";
                    });},
                  ),
                  MaterialButton(
                    height: 80.0,
                    child: Text("3",
                        style: GoogleFonts.spartan(
                            fontWeight: FontWeight.bold, fontSize: 20.0)),
                    textColor: Colors.white,
                    onPressed: () {setState(() {
                      expression += "3";
                    });},
                  ),
                  MaterialButton(
                    height: 80.0,
                    child: Text("-",
                        style: GoogleFonts.spartan(
                            fontWeight: FontWeight.bold, fontSize: 20.0)),
                    textColor: Colors.white,
                    onPressed: () {setState(() {
                      expression += "-";
                    });},
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    height: 80.0,
                    child: Text("C",
                        style: GoogleFonts.spartan(
                            fontWeight: FontWeight.bold, fontSize: 20.0)),
                    textColor: Colors.white,
                    onPressed: () {setState(() {
                      expression = "";
                      result = "";
                    });},
                  ),
                  MaterialButton(
                    height: 80.0,
                    child: Text("0",
                        style: GoogleFonts.spartan(
                            fontWeight: FontWeight.bold, fontSize: 20.0)),
                    textColor: Colors.white,
                    onPressed: () {setState(() {
                      expression += "0";
                    });},
                  ),
                  MaterialButton(
                    height: 80.0,
                    child: Text("=",
                        style: GoogleFonts.spartan(
                            fontWeight: FontWeight.bold, fontSize: 20.0)),
                    textColor: Colors.white,
                    onPressed: () {setState(() {
                      result = calculate(expression);
                    });},
                  ),
                  MaterialButton(
                    height: 80.0,
                    child: Text("+",
                        style: GoogleFonts.spartan(
                            fontWeight: FontWeight.bold, fontSize: 20.0)),
                    textColor: Colors.white,
                    onPressed: () {setState(() {
                      expression += "+";
                    });},
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

String calculate(String expression){
  /*
  double eval = 0;
  if(expression.isNotEmpty){
    Parser p = Parser();
    Expression exp = p.parse(expression);
    ContextModel cm = ContextModel();

    double eval = exp.evaluate(EvaluationType.REAL, cm);
  }*/

  Parser p = Parser();
  Expression exp = p.parse(expression);
  ContextModel cm = ContextModel();

  double eval = exp.evaluate(EvaluationType.REAL, cm);
  return eval.toStringAsFixed(2);
}
