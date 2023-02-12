import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:torch_controller/torch_controller.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var controller = TorchController().initialize();
  

  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("T O R C H"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Image.asset(
            isOn ? "images/2.png" : "images/1.png",
            width: 200,
            height: 200,
          )),
          ElevatedButton(
            onPressed: () {
              setState(() {
                TorchController().toggle();
                isOn = !isOn;
              });
            },
            child:
                Icon(isOn ? Icons.flash_off_rounded : Icons.flash_on_rounded),
          )
        ],
      ),
    );
  }
}
