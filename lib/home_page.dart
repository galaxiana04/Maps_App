import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Import FontAwesome icons
import 'package:sertifikasi_1/map_page.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Kopeng Treetop Adventure Park'),
      //   backgroundColor: Color(0xff0500FE),
      //   elevation: 0,
      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Image.network(
                  "https://cdn.idntimes.com/content-images/community/2021/12/119150504-136898114775814-5293514269412003145-n-d7a5cfe6be371380223a4ffc73ad4e08-0e4e95d340404caebe66f437d3715d96.jpg",
                  fit: BoxFit.cover,
                  height: 250,
                  width: double.infinity,
                ),
                Positioned(
                  bottom: 16,
                  right: 16,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    child: Row(
                      children: [
                        Icon(Icons.favorite, color: Colors.red, size: 20),
                        SizedBox(width: 4),
                        Text(
                          '4.3',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Telaga Ngebel",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Kabupaten Ponorogo, Jawa Timur",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 28),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildActionIcon(
                    icon: FontAwesomeIcons.phone, // Changed to FontAwesome icon
                    label: 'CALL',
                    onPressed: () {},
                  ),
                  _buildActionIcon(
                    icon: FontAwesomeIcons.route, // Changed to FontAwesome icon
                    label: 'ROUTE',
                    onPressed: () async {
                      if (Platform.isWindows) {
                        await launchUrl(
                          Uri.parse("https://maps.app.goo.gl/AzhS8AEmzACvGZB86"),
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MapPage()),
                        );
                      }
                    },
                  ),
                  _buildActionIcon(
                    icon: FontAwesomeIcons.share, // Changed to FontAwesome icon
                    label: 'SHARE',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text(
                    'Telaga Ngebel adalah salah satu destinasi wisata unggulan yang berada di Kabupaten Ponorogo. Ketenangan dan keindahan alam danau alami menjadi daya tarik wisatawan untuk datang ke sini.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Menurut legenda yang dikutip dari laman Kementerian Pariwisata dan Ekonomi Kreatif, Telaga Ngebel muncul karena ulah dari ular naga bernama Baru Klinting, jelmaan Patih Kerajaan Bantaran Angin. Ia tidak sengaja tertangkap warga saat bersemedi dalam wujud ular. Ular ini sontak berubah menjadi anak kecil yang langsung menancapkan lidi di tanah sekaligus mencabutnya. Air yang muncul dari lubang tersebut akhirnya menjadi mata air yang menghidupi masyarakat setempat hingga sekarang. Bahkan Telaga Ngebel diklaim lima kali lebih luas dibandingkan Telaga Sarangan yang hanya memiliki luas sekitar 30 hektar.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildActionIcon({required IconData icon, required String label, required VoidCallback onPressed}) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [Color(0xff0500FE), Color(0xff21D4FD)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 4),
                blurRadius: 8,
              ),
            ],
          ),
          child: IconButton(
            icon: Icon(icon, size: 30, color: Colors.white),
            onPressed: onPressed,
          ),
        ),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(color: Color(0xff0500FE), fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
