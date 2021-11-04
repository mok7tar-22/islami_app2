import 'package:flutter/material.dart';
import 'package:islami_app2/widgets/quran_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 late int currentScreenIndex;
  @override
  void initState() {
    // TODO: implement initState
    currentScreenIndex=0;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background_image.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "اسلامي",
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        body: QuranScreen(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentScreenIndex,
          backgroundColor: Color.fromARGB(255, 183, 147, 95),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          showUnselectedLabels: false,
          selectedLabelStyle: TextStyle(
            fontSize: 16
          ),
          iconSize: 24,
         onTap: (index){
            currentScreenIndex=index;
            setState(() {

            });
         },
          items: [
            BottomNavigationBarItem(

                icon: ImageIcon(AssetImage('assets/icons/radio_ic.png')),
                label: 'راديو'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/icons/sebha.png')),
                label: 'تسبيح'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/icons/hadth.png')),
                label: 'حديث'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/icons/moshaf_ic.png')),
                label: 'قران')
          ],
        ),
      ),
    );
  }
}
