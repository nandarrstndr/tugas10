import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  static const String routes = 'FormScreen';
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController fullname = TextEditingController();
  String yourname = '';

  final TextEditingController fullpassword = TextEditingController();
  String yourpassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Login'),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('Silahkan Login',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
            ),
            //Text('Harap isi'),
            //Text('Form dibawah ini'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: fullname,
                decoration: InputDecoration(
                    hintText: 'Masukan Nama Anda',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: fullname,
                decoration: InputDecoration(
                    hintText: 'Masukan Password Anda',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)))),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 0, 105, 47),
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
              onPressed: () {
                setState(() {
                  yourname = fullname.text;
                });
              },
              child:  Text('Submit'),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              width: 600,
              height: 150,
              decoration: BoxDecoration(
                //color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text("Nama Anda Adalah $yourname",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 10)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text("password Anda Adalah $yourname",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 10)),
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
