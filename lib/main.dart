import 'package:flutter/material.dart';
import 'secondpage.dart';

void main() {
  runApp(MaterialApp(
    title: "Assesment2",
    home: MyForm(),
  ));
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final firstController  = TextEditingController();
    final secondController = TextEditingController();
    final thirdController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Assesment 2"),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              // TextField(),
              TextFormField(
                decoration: new InputDecoration(
                  hintText: "Nama Barang",
                  labelText: "Nama barang",
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0)),
                ),
                controller: firstController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: new InputDecoration(
                  hintText: "Deskripsi",
                  labelText: "Deskripsi",
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0)),
                ),
                controller: secondController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: new InputDecoration(
                  hintText: "Harga",
                  labelText: "Harga",
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0)),
                ),
                controller: thirdController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              SwitchListTile(
                title: Text('Pengirim dalam kota saja'),
                value: true,
                activeTrackColor: Colors.pink[100],
                activeColor: Colors.red,
                onChanged: (value) {},
              ),
              SwitchListTile(
                title: Text('Menerima retur'),
                value: true,
                activeTrackColor: Colors.pink[100],
                activeColor: Colors.red,
                onChanged: (value) {},
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                  child: ElevatedButton(
                      onPressed: (){
                        List<String> formData = [];

                        String kirim1 = firstController.text;
                        String kirim2 = secondController.text;
                        String kirim3 = thirdController.text;

                        formData.add(kirim1);
                        formData.add(kirim2);
                        formData.add(kirim3);

                        AlertDialog alert = AlertDialog(
                        title: Text("6701213060 - Rahmatunnisa"),
                        content: Text("Nama Barang: "+kirim1+
                        "Deskripsi: "+kirim2+
                        "Harga: "+kirim3),
                      );

                      showDialog(context: context,
                          builder:(BuildContext context){
                            return alert;
                          }
                      );

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondLayout(data: formData)
                            )
                        );
                      },
                      child: const Text("PUBLIKASIKAN"))
              )
            ],
          ),
        ),
      ),
    );
  }
}