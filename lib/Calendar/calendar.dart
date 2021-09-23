import 'package:flutter/material.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        elevation: 25,
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue,
        child: Icon(Icons.add,size: 30,),
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
                      child:Icon(Icons.calendar_today_rounded,color: Colors.pinkAccent),
                    ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                child: Text("Sep 2020",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,

                  ),
                ),
              ),
            ],
          ),
         Padding(
           padding: const EdgeInsets.all(20.0),
           child: SizedBox(
             height:100,
             child: Container(
               // padding: EdgeInsets.all(10),
               decoration: BoxDecoration(
                 color: Color(0xff2f35a3),
                 borderRadius: BorderRadius.circular(35),
               ),
               child:Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.fromLTRB(20, 30, 22, 0),
                     child: Column(
                       children: [
                         Text("Sun",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200),),
                         Padding(
                           padding: const EdgeInsets.only(top: 15),
                           child: Text("20",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                         )
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(right: 22.0),
                     child: Container(
                       padding: EdgeInsets.fromLTRB(7, 0, 7, 0),
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(20),
                       ),
                       child: Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(top: 30),
                             child: Text("Mon",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300),),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(top: 15),
                             child: Text("21",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                           )
                         ],
                       ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(0, 30, 22, 0),
                     child: Column(
                       children: [
                         Text("Tue",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200),),
                         Padding(
                           padding: const EdgeInsets.only(top: 15),
                           child: Text("22",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                         )
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(0, 30, 22, 0),
                     child: Column(
                       children: [
                         Text("Wed",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200),),
                         Padding(
                           padding: const EdgeInsets.only(top: 15),
                           child: Text("23",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                         )
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(0, 30, 22, 0),
                     child: Column(
                       children: [
                         Text("Thu",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200),),
                         Padding(
                           padding: const EdgeInsets.only(top: 15),
                           child: Text("24",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                         )
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(0, 30, 22, 0),
                     child: Column(
                       children: [
                         Text("Fri",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200),),
                         Padding(
                           padding: const EdgeInsets.only(top: 15),
                           child: Text("25",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                         )
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                     child: Column(
                       children: [
                         Text("Sat",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200),),
                         Padding(
                           padding: const EdgeInsets.only(top: 15),
                           child: Text("26",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                         )
                       ],
                     ),
                   ),
                 ],
               )
             ),
           ),
         ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 10, 0),
                child: Align(
                    alignment: Alignment.topRight,
                    child: Icon(Icons.more_horiz_rounded)
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 0, 25),
                child: Text(
                  'Tasks',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 15, 35, 15),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: const Offset(
                            0.0,
                            25.0,
                          ),
                          blurRadius: 15.0,
                          spreadRadius: 2.0,
                        ),

                      ],
                    ),
                    child: ListTile(
                      leading: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.red[50],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child:Icon(Icons.description_outlined,color: Colors.pinkAccent),
                      ),
                      title: Text('Project Meeting',style: TextStyle(fontWeight: FontWeight.bold),),
                      trailing: Icon(Icons.more_vert),
                      subtitle: Text(
                        '9 am to 11 am',
                      ),
                      onTap: () {

                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 15, 35, 15),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ListTile(
                      leading: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child:Icon(Icons.phone_outlined,color: Colors.red[400],),
                      ),
                      title: Text('Client Call',style: TextStyle(fontWeight: FontWeight.bold),),
                      trailing: Icon(Icons.more_vert),
                      subtitle: Text(
                        '12 pm to 1 pm',
                      ),
                      onTap: () {

                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 15, 35, 15),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ListTile(
                      leading: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child:Icon(Icons.people_outline,color: Colors.red[400],),
                      ),
                      title: Text('Team Meeting',style: TextStyle(fontWeight: FontWeight.bold),),
                      trailing: Icon(Icons.more_vert),
                      subtitle: Text(
                        '2 pm to 3 pm',
                      ),
                      onTap: () {

                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 15, 35, 15),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ListTile(
                      leading: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child:Icon(Icons.file_copy,color: Colors.red[400],),
                      ),
                      title: Text('Project Building',style: TextStyle(fontWeight: FontWeight.bold),),
                      trailing: Icon(Icons.more_vert),
                      subtitle: Text(
                        '3 pm to 5 pm',
                      ),
                      onTap: () {

                      },
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

