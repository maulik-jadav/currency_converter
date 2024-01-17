import 'package:flutter/material.dart';

class Convertor extends StatefulWidget{
  const Convertor({super.key});
  // This widget is the root of your application.
  @override
  ConvertorState createState() => ConvertorState();
}

class ConvertorState extends State<Convertor> {
  double result = 0;
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        centerTitle: true,
        title: const Text("Currency Converter",
          style: TextStyle(
              fontSize: 30
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: textEditingController,
                  decoration: InputDecoration(
                    hintText: "Enter amount in usd:",
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(Icons.monetization_on),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            style: BorderStyle.solid,
                            width: 2.0
                        ),
                        borderRadius: BorderRadius.circular(30.0)
                    ),
                  ),)

            ),
            Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(onPressed: () {
                  setState(() => result = double.parse(textEditingController.text) * 80);

                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 10,
                      side: const BorderSide(
                        width: 2.0,
                      ),

                    ),
                    child: const Text("Convert",
                      style: TextStyle(fontSize: 22),)
                )
            ),
            Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: 350,
                  height: 60,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.black, // Border color
                      width: 2,
                  ),),
                    child: Row(children: [const Icon(
                      Icons.currency_rupee,
                    ),
                      Text(result.toString() ,
                style: const TextStyle(
                  fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
                ),

                    ]
                    ),

                )

            )
          ],
        ),
      ),
    );
  }
}





