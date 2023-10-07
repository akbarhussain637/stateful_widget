
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {/*disadvantages of stateful widget to rebuild of single widget for single
                                            action  */
 const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;
  @override
  
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print('build');
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('count'),
      ),
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(count.toString(),style: const TextStyle(fontSize: 50),)),

        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        count++;
        print(count);
        setState(() {
          
        });
      },
      child: const Icon(Icons.add),
      ),
    );
  }
}