import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static String id = 'Home';

  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {
  @override

  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Registro'),
        backgroundColor: Colors.greenAccent,
        actions: [
          Image.asset('assets/img/avatar.png'),
        ],
      ),
      body: Column(
          children: [

            SizedBox(height: 20.0,),

            SizedBox(
              height: 520.0,
              child: RefreshIndicator(child: ListView.builder(
                itemCount: 25,
                padding: EdgeInsets.symmetric(horizontal: 25),
                itemBuilder: (contexto, index){
                  return Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Card(
                      child: Container(
                        padding: EdgeInsets.all(65),
                      ),
                    ),
                  );
                },), onRefresh: ()async{
              }),
            ),
          ]),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        child: Icon(Icons.add),
        onPressed: (){},
      ),
    ),
    );
  }
}