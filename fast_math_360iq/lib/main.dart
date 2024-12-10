import 'package:fast_math_360iq/second_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


///////////////--------------------------------
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '360IQ',
      home: const MyHomePage(title: '360 IQ',
      ),
    );
  }
}
// --------------------------------



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}




// ---------------------


class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: 
            PreferredSize(
              preferredSize: const Size.fromHeight(100),
              child: AppBar(
                 
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text(widget.title,style:TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),
                  ],
                ),
                
                
                backgroundColor:Colors.yellow,
                centerTitle: true,
                
                
                
              ),
            ),
         
      
      body: Center(
        child: Container(
          color:Colors.blue,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FilledButton(style:FilledButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black

                ),onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> const second_page()));
                },
                 child: const Text('play',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
              ],
            ),
          ),
        ),
      ),
 // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
