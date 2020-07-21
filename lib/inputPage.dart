import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              ReuseableCards(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 2.5,
              ),
              ReuseableCards(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 2.5,
              ),
            ],
          ),
          ReuseableCards(
            height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.width,
          ),
          Row(
            children: <Widget>[
              ReuseableCards(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 2.5,
              ),
              ReuseableCards(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 2.5,
              ),
            ],
          ),
          BottomAppBar(
            color: Colors.pink,
            child: MaterialButton(
              minWidth: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 12,
              child: Text(
                "Calculate your BMI".toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              onPressed: () {},
              //  child: ,
            ),
          )
        ],
      ),
      floatingActionButton: Theme(
          data: ThemeData(accentColor: Colors.red),
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
          )),
    );
  }
}

class ReuseableCards extends StatelessWidget {
  double height, width;
  ReuseableCards({
    @required this.height,
    @required this.width,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: height,
        width: width,
        margin: EdgeInsets.all(17),
        decoration: BoxDecoration(
            color: Color(0xFF1D1E33), borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
