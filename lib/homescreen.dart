import 'package:flutter/material.dart';
class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    ProfileCard(), // Home Screen
    Center(child: Text('PTM Report')), // PTM Report Screen
    Center(child: Text('Fill App')), // Fill App Screen
    Center(child: Text('Profile')), // Profile Screen
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        backgroundColor: Color(0xff07395A),
        title: Text(
          "Red & White Multimedia",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications, color: Colors.white),
          ),
        ],
      ),
      drawer: Drawer(),
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://i.redd.it/qwd83nc4xxf41.jpg"),
            opacity: .3,
            fit: BoxFit.cover,
          ),
        ),
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _selectedIndex == 0 ? Color(0xff07395A) : Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bar_chart,
              color: _selectedIndex == 1 ? Color(0xff07395A) : Colors.grey,
            ),
            label: 'PTM Report',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.description,
              color: _selectedIndex == 2 ? Color(0xff07395A) : Colors.grey,
            ),
            label: 'Fill App',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: _selectedIndex == 3 ? Color(0xff07395A) : Colors.grey,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff07395A),
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(height: 30,),
          SizedBox(
            width: 400,
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                   Row(
                     children: [
                       CircleAvatar(
                         backgroundColor:Color(0xff07395A).withOpacity(.2),
                         radius: 30,
                         child: Icon(Icons.person_outline_outlined, size: 40,color:Color(0xff07395A),),
                       ),
                       SizedBox(width: 20,),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(
                             'Name:',
                             style: TextStyle(
                               fontSize: 14,
                               fontWeight: FontWeight.w400,
                             ),
                           ),
                           Text(
                             'NEEL PATEL',
                             style: TextStyle(
                               fontSize: 20,
                               fontWeight: FontWeight.w600,
                             ),
                           ),
                         ],
                       ),
                       Spacer(),
                       Text(
                         'GR Id : 3835',
                         style: TextStyle(
                           fontSize: 16,
                         ),
                       ),
                     ],
                   ),
                    SizedBox(height: 20),
                    Container(
                      width: 350,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color:Color(0xff07395A).withOpacity(.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Enrollment No.',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'RNW/Year23-24/RW6/235',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Course',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Master In Flutter Development',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
