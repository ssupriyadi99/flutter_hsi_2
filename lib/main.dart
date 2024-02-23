import 'package:flutter/material.dart';
import 'package:flutter_hsi_2/CommonBar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_hsi_2/profile_page.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart' as local;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  static final List<String> imageList = [
    "assets/images/slider-ramadhan.png",
    "assets/images/slider-air.png",
    "assets/images/slider-neraka.png",
    "assets/images/slider-umrah.png",
  ];

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int activeIndex = 0;
  int selectedIndex = 0;

  List<PreferredSizeWidget> _appBars = [];
  List<Widget> _pages = [];

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget appBar1 = CommonBar().headerAppBar();
    _appBars = [appBar1, appBar1, appBar1, CommonBar().profileAppBar()];

    Widget homePage = buildMainBody();
    _pages = [homePage, homePage, homePage, ProfilePage().buildProfileWidget()];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _appBars.elementAt(selectedIndex),
        body: _pages.elementAt(selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          iconSize: 18,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.school,
                color: Colors.black,
              ),
              label: 'Akademi',
            ),
            BottomNavigationBarItem(
              // icon: Icon(
              //   Icons.edit_document,
              //   color: Colors.black,
              // ),
              icon: ImageIcon(AssetImage("assets/icons/document.png")),
              label: 'Reguler',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/profile_13864389.png")),
              label: 'Profil',
            ),
          ],
          currentIndex: selectedIndex,
          onTap: onItemTapped,
        ),
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  ListView buildMainBody() {
    local.initializeDateFormatting('id_ID');

    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.all(8.0),
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Assalamualaikum,",
              style: TextStyle(fontFamily: "Plus Jakarta Sans", fontSize: 15),
              textAlign: TextAlign.left,
            ),
            const Text(
              "SUPRIYADI",
              style: TextStyle(
                  fontFamily: "Plus Jakarta Sans",
                  fontSize: 25,
                  fontWeight: FontWeight.w900),
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "ARN231-33151",
              style: TextStyle(fontFamily: "Plus Jakarta Sans", fontSize: 15),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 10),
            CarouselSlider.builder(
              itemCount: MainApp.imageList.length,
              itemBuilder: (context, index, realIndex) {
                final String urlImage = MainApp.imageList[index];
                return buildSlider(urlImage);
              },
              options: CarouselOptions(
                height: 300,
                aspectRatio: 16 / 9,
                viewportFraction: 0.7,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 2),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) =>
                    setState(() => activeIndex = index),
              ),
            ),
            const SizedBox(height: 5),
            buildIndicator(),
            // CarouselSlider(
            //   items: const [
            //     Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: Image(
            //           image:
            //               AssetImage("assets/images/slider-ramadhan.png")),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: Image(
            //           image: AssetImage("assets/images/slider-air.png")),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: Image(
            //           image: AssetImage("assets/images/slider-neraka.png")),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(10.0),
            //       child: Image(
            //           image: AssetImage("assets/images/slider-umrah.png")),
            //     ),
            //   ],
            //   // options: CarouselOptions(
            //   //   autoPlay: true,
            //   // ),
            //   options: CarouselOptions(
            //     height: 400,
            //     aspectRatio: 16 / 9,
            //     viewportFraction: 0.8,
            //     initialPage: 0,
            //     enableInfiniteScroll: true,
            //     reverse: false,
            //     autoPlay: true,
            //     autoPlayInterval: Duration(seconds: 2),
            //     autoPlayAnimationDuration: Duration(milliseconds: 800),
            //     autoPlayCurve: Curves.fastOutSlowIn,
            //     enlargeCenterPage: true,
            //     enlargeFactor: 0.3,
            //     scrollDirection: Axis.horizontal,
            //   ),
            // ),
            const SizedBox(height: 30),
            const Text(
              "Evaluasi",
              style: TextStyle(
                  fontFamily: "Plus Jakarta Sans",
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
            Container(
              height: 200.0,
              margin: EdgeInsets.symmetric(horizontal: 5),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    width: 1, color: const Color.fromARGB(255, 212, 212, 212)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 201, 242, 233),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text("Majalah HSI",
                            style: TextStyle(
                              fontFamily: "Plus Jakarta Sans",
                              color: Color.fromARGB(255, 1, 96, 173),
                            )),
                      ),
                      const Text("Aktif",
                          style: TextStyle(
                            fontFamily: "Plus Jakarta Sans",
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Kuis Majalah HSI Edisi 58",
                    style: TextStyle(
                      fontFamily: "Plus Jakarta Sans",
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  const Text(
                    "Majalah 1444H",
                    style: TextStyle(
                      fontFamily: "Plus Jakarta Sans",
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 201, 242, 233),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.list,
                              color: Colors.black,
                            ),
                            Text(
                              "10 Soal",
                              style: TextStyle(
                                fontFamily: "Plus Jakarta Sans",
                                color: Color.fromARGB(255, 1, 55, 99),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 201, 242, 233),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.lock_clock_outlined,
                              color: Colors.black,
                            ),
                            Text(
                              DateFormat('EEEE, dd MMM yyyy  ', 'id_ID')
                                  .format(DateTime.now()),
                              style: const TextStyle(
                                fontFamily: "Plus Jakarta Sans",
                                color: Color.fromARGB(255, 1, 55, 99),
                              ),
                            ),
                            Icon(
                              Icons.circle,
                              color: Colors.black,
                              size: 5.0,
                            ),
                            Text(
                              DateFormat('  HH:mm', 'id_ID')
                                  .format(DateTime.now()),
                              style: const TextStyle(
                                fontFamily: "Plus Jakarta Sans",
                                color: Color.fromARGB(255, 1, 55, 99),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ListTile(
                    title: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Kerjakan",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(30),
                        backgroundColor: Colors.green,
                        // side: BorderSide(
                        //   width: 1,
                        //   color: Colors.red,
                        // ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  // ElevatedButton(
                  //   onPressed: () {},
                  //   style: ElevatedButton.styleFrom(
                  //     minimumSize: const Size.fromHeight(50),
                  //   ),
                  //   child: Container(
                  //     alignment: Alignment.center,
                  //     padding: EdgeInsets.symmetric(
                  //       vertical: 0,
                  //       horizontal: 0,
                  //     ),
                  //     decoration: BoxDecoration(
                  //       color: Colors.green,
                  //       borderRadius: BorderRadius.circular(5),
                  //     ),
                  //     child: Text(
                  //       "Kerjakan",
                  //       style: TextStyle(
                  //         fontFamily: "Plus Jakarta Sans",
                  //         color: Colors.white,
                  //         fontWeight: FontWeight.bold,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildSlider(String imageUrl) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Image(image: AssetImage(imageUrl)),
    );
  }

  Widget buildIndicator() => Container(
        alignment: Alignment.center,
        child: AnimatedSmoothIndicator(
          activeIndex: activeIndex,
          count: MainApp.imageList.length,
          effect: ExpandingDotsEffect(
            dotHeight: 8,
            dotWidth: 8,
          ),
        ),
      );

  // AnimatedSmoothIndicator(
  //   activeIndex: activeIndex,
  //   count: MainApp.imageList.length,
  // );
}
