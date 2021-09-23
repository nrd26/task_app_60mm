import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewTask extends StatefulWidget {
  @override
  _NewTaskState createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:FloatingActionButton.extended(
        elevation: 0,
          backgroundColor: Color(0xff1900ff),
          label: Text('\t\t\t\t\t\t\t\t Create New Task \t\t\t\t\t\t\t\t'),
          hoverColor: Colors.black,
          onPressed: (){

          }
          ),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 20, 0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.red[50],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child:Icon(Icons.person_outline,color: Colors.pinkAccent),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                child: Text("New Task",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(35, 20, 35, 0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'Title'),
                  initialValue: 'UI Design',
                ),
                Padding(padding: EdgeInsets.only(top: 15)),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Date'),
                  initialValue: 'Tuesday, 22 Sept 2020',
                ),
                Padding(padding: EdgeInsets.only(top: 15)),
                Row(
                  children: [
                    Flexible(
                      child: TextFormField(
                        decoration: InputDecoration(labelText: 'Start time'),
                        initialValue: '1 : 00                  PM',
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(right: 40)),
                    Flexible(
                      child: TextFormField(
                        decoration: InputDecoration(labelText: 'End time'),
                        initialValue: '3 : 00                  PM',
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 15)),
                TextFormField(
                  maxLines: 2,
                  decoration: InputDecoration(labelText: 'Description'),
                  initialValue: 'Lorem Ipsum is simply dummy text of the typesetting industry.',
                ),
                Padding(padding: EdgeInsets.only(top: 15)),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Category',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Wrap(
                      direction: Axis.horizontal,
                      children: [
                        Option(Text("Marketing"), Color(0xffd0e1f2)),
                        Option(Text("Meeting"), Color(0xffd0e1f2)),
                        Option(Text("Dev"), Color(0xffd0e1f2)),
                        Option(Text("Mobile"), Color(0xffd0e1f2)),
                        Option(Text("UI Design",style: TextStyle(color: Colors.pinkAccent),), Color(0xfffae8e8)),
                        Option(Text("HTML"), Color(0xffd0e1f2)),
                        Option(Text("Graphic Design"), Color(0xffd0e1f2)),
                        Option(Text("Android App"), Color(0xffd0e1f2)),
                        Option(Text("iOS App"), Color(0xffd0e1f2)),
                        Option(Text("Magento"), Color(0xffd0e1f2)),
                        Option(Text("SEO"), Color(0xffd0e1f2)),
                      ],
                    ),
                  ),
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}



class Option extends StatelessWidget {
  Text text = Text(" ");
  Color color = Colors.pinkAccent;
  Option(this.text,this.color);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Container(
          padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
          decoration: BoxDecoration(
            color: this.color,
            borderRadius: BorderRadius.circular(15),
          ),
          child: this.text),
    );
  }
}


