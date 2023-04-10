import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _fnameController = TextEditingController();
  final _lnameController = TextEditingController();
  String? _fullName;
  var counter;
  var num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calc era"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    controller: _fnameController,
                    decoration: InputDecoration(
                      hintText: "First Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: _lnameController,
                    decoration: InputDecoration(
                      hintText: "Last Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _fullName =
                            '${_fnameController.text} ${_lnameController.text}';
                      });
                    },
                    child: const Text("Submit details"),
                  ),
                  if (_fullName != null) ...[
                    const SizedBox(height: 20),
                    Text(_fullName!),
                  ],
                  SizedBox(height: 20,),
                  Text(num.toString()),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            num+=2;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
