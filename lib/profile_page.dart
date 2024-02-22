import 'package:flutter/material.dart';
import 'package:flutter_hsi_2/CommonBar.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const ProfilePage());
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: CommonBar().profileAppBar(),
        body: buildProfileWidget(),
        bottomNavigationBar: CommonBar().bottomNav(),
      ),
    );
  }

  Widget buildProfileWidget() {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(8.0),
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage("assets/images/logo-hsi.png"),
                ),
              ),
              title: Text(
                "SUPRIYADI",
              ),
              subtitle: Text(
                "ARN231-33151",
              ),
              trailing: ElevatedButton.icon(
                onPressed: () {},
                icon: ImageIcon(AssetImage("assets/icons/edit_doc2.png")),
                label: Text("Ubah"),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                )),
              ),
            ),
            const Divider(),
            const ListTile(
              leading: ImageIcon(
                AssetImage("assets/icons/whatsapp_6422213.png"),
                color: Colors.black,
              ),
              title: Text("Nomor Whatsapp"),
              subtitle: Text("62-81567999999"),
            ),
            const ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: Text("Alamat"),
              subtitle: Text("Bintaro, Pondok Aren, Tangerang Selatan"),
            ),
            const ListTile(
              leading: ImageIcon(
                AssetImage("assets/icons/location.png"),
                color: Colors.black,
              ),
              title: Text("Kabupaten/Kota, Provinsi, Kode Pos"),
              subtitle: Text("Tangerang Selatan, Banten 15225"),
            ),
            const ListTile(
              leading: ImageIcon(
                AssetImage("assets/icons/ring_5446974.png"),
                color: Colors.black,
              ),
              title: Text("Status Pernikahan / Jumlah Anak"),
              subtitle: Text("Menikah / 2"),
            ),
            const ListTile(
              leading: Icon(
                Icons.headset_mic,
                color: Colors.black,
              ),
              title: Text(
                "List Admin",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "RAHMAN SYARIF",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "(ARN201-34049)",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            const ListTile(
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Silsilah Ilmiyyah 2-4 : Mengenal Allah, Rasulullah shalallahu'alayhi wa sallam & Islam",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "Group: ARN231-25",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Program Reguler",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const ImageIcon(
                        AssetImage("assets/icons/whatsapp_6422213.png"),
                        color: Colors.white,
                      ),
                      label: const Text(
                        "Hubungi",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Joko Dewanto",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "(ARN202-99999)",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            const ListTile(
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Silsilah Ilmiyyah 2-4 : Mengenal Allah, Rasulullah shalallahu'alayhi wa sallam & Islam",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "Group: ARN231-25",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Program Reguler",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const ImageIcon(
                        AssetImage("assets/icons/whatsapp_6422213.png"),
                        color: Colors.white,
                      ),
                      label: const Text(
                        "Hubungi",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.info,
                color: Color.fromRGBO(13, 71, 161, 1),
              ),
              title: Text("Info Lainnya"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.lock_open,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "Ganti Password",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.black,
                    ),
                  ]),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.help_outline,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "Bantuan",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.black,
                    ),
                  ]),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.shield_outlined,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "Kebijakan Privasi",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.black,
                    ),
                  ]),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
            ),
            ListTile(
              title: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Keluar",
                  style: TextStyle(color: Colors.red),
                ),
                style: ElevatedButton.styleFrom(
                  side: BorderSide(
                    width: 1,
                    color: Colors.red,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
