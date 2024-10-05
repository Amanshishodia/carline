import 'package:carline/presentation/pages/home/tabs/convertable.dart';
import 'package:carline/presentation/pages/home/tabs/hatchback.dart';
import 'package:carline/presentation/pages/home/tabs/offroad.dart';
import 'package:carline/presentation/pages/home/tabs/sedan.dart';
import 'package:carline/presentation/pages/home/view_all%20cars.dart';
import 'package:carline/presentation/widgets/mytab.dart';
import 'package:carline/presentation/widgets/text_input.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0; // Index of the selected item

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  void _onBottomNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index
    });
  }

  List<Widget> myTabs = [
    Mytab(
      image: Image.asset('asset/icons/sedan.png'),
      text: 'Sedan',
    ),
    Mytab(
      image: Image.asset('asset/icons/hatchback.png'),
      text: 'Hatchback',
    ),
    Mytab(
      image: Image.asset('asset/icons/convertable.png'),
      text: 'Convertible',
    ),
    Mytab(
      image: Image.asset('asset/icons/offroad.png'),
      text: 'Offroad',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.all(15),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 51,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                       border: Border.all(width: 0.1),
                      ),
                      child: Icon(Icons.location_on, size: 28,),
                    )
                    ,
                     Container(
                      width: 200,
                      height: 50,
                     
                      child:  Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  Text(
                                    'Location',
                                  ),
                                  Text('Uposhohor, Sylhet Sadar',style: GoogleFonts.urbanist(fontWeight: FontWeight.bold),),
                                ],
                              ),
                    ),
                     Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                       border: Border.all(width: 0.1),
                      ),
                      child: Icon(
                        Icons.notifications_outlined,
                        size: 28,
                      ),
                    )

                    
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextInput(
                hint: 'Search Cars',
                lastIcon: Icon(Icons.search),
              ),
            ),
            SizedBox(height: 20),
            Container(
              alignment: Alignment.centerLeft,
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  
                  indicatorColor: Colors.white,
                  dividerColor: Colors.transparent,
                  tabAlignment: TabAlignment.start,
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  dragStartBehavior: DragStartBehavior.start,
                  labelPadding: EdgeInsets.symmetric(horizontal: 5.0),
                  controller: _tabController,
                  tabs: myTabs,
                  isScrollable: true,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Car Recomendation',
                    style: GoogleFonts.urbanist(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ViewAllCars();
                      }));
                    },
                    child: Text(
                      'View All',
                      style: GoogleFonts.urbanist(
                          color: Colors.grey, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 390,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Sedan(),
                  Hatchback(),
                  Convertable(),
                  Offroad(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.grey,
        onTap: _onBottomNavItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
