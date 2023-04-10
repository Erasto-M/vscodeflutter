import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCalc extends StatefulWidget {
  const MyCalc({super.key});

  @override
  State<MyCalc> createState() => _MyCalcState();
}

class _MyCalcState extends State<MyCalc> {
  final _num1conroller = TextEditingController();
  final _num2controller = TextEditingController();
  double? result = 0;
  void addition() {
    double num1 = double.parse(_num1conroller.text);
    double num2 = double.parse(_num2controller.text);
    setState(() {
      result = num1 + num2;
    });
  }

  void Subtraction() {
    double num1 = double.parse(_num1conroller.text);
    double num2 = double.parse(_num2controller.text);
    setState(() {
      result = num1 - num2;
    });
  }

  void Multiplication() {
    double num1 = double.parse(_num1conroller.text);
    double num2 = double.parse(_num2controller.text);
    setState(() {
      result = num1 * num2;
    });
  }

  void division() {
    double num1 = double.parse(_num1conroller.text);
    double num2 = double.parse(_num2controller.text);
    setState(() {
      result = num1 / num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          top: 70,
          left: 20,
          right: 20,
        ),
        child: Column(children: [
          Text(
            "Calculator",
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          _textFormField(hinttext: "num1", controller: _num1conroller),
          SizedBox(
            height: 20,
          ),
          _textFormField(hinttext: "num2", controller: _num2controller),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Result"),
              SizedBox(
                width: 15,
              ),
              Text(result.toString()),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              showbutton(
                  symbol: "+",
                  function: () {
                    addition();
                  }),
              showbutton(
                  symbol: "-",
                  function: () {
                    Subtraction();
                  })
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              showbutton(
                  symbol: "*",
                  function: () {
                    Multiplication();
                  }),
              showbutton(
                  symbol: "/",
                  function: () {
                    division();
                  })
            ],
          ),
        ]),
      ),
    );
  }

  TextFormField _textFormField({
    required String hinttext,
    required TextEditingController controller,
  }) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: GoogleFonts.aBeeZee(
            color: Colors.black54,
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
    );
  }

  Widget showbutton({required dynamic symbol, required Function function}) {
    return ElevatedButton(onPressed: function(), child: symbol);
  }
}
