import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image(
          image: AssetImage('assets/menu.png'),
          height: 20,
          width: 50,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        actions: <Widget>[
          Image(
              image: AssetImage('assets/user.png'),
            height: 20,
            width: 50,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
        // currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        unselectedItemColor: Colors.grey,
        // onTap: _onItemTapped,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Text("Hello, John!",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,

            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text("Have a nice day!",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,

              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
               //SEARCH BAR AND ADJUST ICON
                SizedBox(
                  height: 50,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child:Padding(
                      padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                      child: Row(
                        children: [
                          Text("Search",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                          Padding(
                            padding: const EdgeInsets.only(left: 170),
                            child: Icon(Icons.search,color: Colors.grey,),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child:Icon(Icons.tune_sharp,color: Colors.blue[800],),
                  ),
                ),
              ],

            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 20),
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
                              5.0,
                            ),
                            blurRadius: 20.0,
                            spreadRadius: 2.0,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.fiber_manual_record,color: Colors.red, size: 10,),
                          Text('\t\t\t\tMy Task\t\t\t\t',
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),

                          ),
                        ],
                      )
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(30),

                      ),
                      child: Text('\t\t\tProjects\t\t\t',
                        style: TextStyle(
                            color: Colors.grey[600],
                          fontWeight: FontWeight.bold
                        ),

                      )
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(30),

                      ),
                      child: Text('\t\t\t\tNotes\t\t\t\t',
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold
                        ),

                      )
                      ),
                ),
              ],
            ),
          ),

          SizedBox(
            //CHANGE THIS TO CHANGE BOX HEIGHT
            height: 270.0,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Container(
                        padding: EdgeInsets.fromLTRB(25, 30, 40, 30),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.deepPurple[600],
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child:Icon(Icons.person_outline,color: Colors.white,size: 28,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text(
                                      'Project B',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Text(
                                  "Front End \nDevelopment",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white
                              ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Text("September 2020",
                                  style: TextStyle(
                                    color: Colors.white
                                  ),
                                  ),
                                ))
                          ],
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Container(
                        padding: EdgeInsets.fromLTRB(25, 30, 40, 30),
                        decoration: BoxDecoration(
                          color: Colors.blue[700],
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.blue[800],
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child:Icon(Icons.person_outline,color: Colors.white,size: 28,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text(
                                    'Project A',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Text(
                                "Graphic \nDesign",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white
                                ),
                              ),
                            ),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Text("October 2020",
                                    style: TextStyle(
                                        color: Colors.white
                                    ),
                                  ),
                                ))
                          ],
                        )),
                  ),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 00, 0, 0),
            child: Text(
                'Process',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(40),
                // boxShadow: [
                //   BoxShadow(
                //     color: Color(0x802196F3),
                //     offset: const Offset(
                //       5.0,
                //       5.0,
                //     ),
                //     blurRadius: 10.0,
                //     spreadRadius: 2.0,
                //   ),
                //
                // ],
              ),
              child: ListTile(
                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child:Icon(Icons.description_outlined,color: Colors.red[400],),
                ),
                title: Text('Project Name',style: TextStyle(fontWeight: FontWeight.bold),),
                trailing: Icon(Icons.more_vert),
                subtitle: Text(
                  '2 days ago',
                ),
                onTap: () {

                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

