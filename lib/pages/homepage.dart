import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("622021121"),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          buildTop(),
          buildContent(),
          about(),
        ],
      ),
    );
  }

  Widget buildTop() {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        profile(),
        Positioned(
          top: 190,
          child: profileinternet(),
        ),
        // myname(),
        // birthday(),
      ],
    );
  }

  Widget buildContent() => Column(
        children: [
          const SizedBox(height: 8),
          Text(
            'Dell Theerapat',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 8),
          Text(
            '622021121@tsu.ac.th',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildSocialIcon(FontAwesomeIcons.instagram),
              const SizedBox(width: 12),
              buildSocialIcon(FontAwesomeIcons.twitter),
              const SizedBox(width: 12),
              buildSocialIcon(FontAwesomeIcons.github),
              const SizedBox(width: 12),
              buildSocialIcon(FontAwesomeIcons.facebook),
            ],
          ),
        ],
      );
  Widget about() => Container(
        padding: EdgeInsets.only(right: 40, left: 40, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              'My name is Theerapat Traikaew',
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );

  Widget buildSocialIcon(IconData icon) => CircleAvatar(
        radius: 25,
        child: Center(child: Icon(icon, size: 32)),
      );

  Widget profileinternet() {
    return CircleAvatar(
      radius: 80,
      backgroundColor: Colors.grey,
      child: CircleAvatar(
        radius: 78,
        backgroundImage: NetworkImage(
            'https://scontent.fbkk28-1.fna.fbcdn.net/v/t1.6435-9/66389968_2500998303455630_1232085465633390592_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=e3f864&_nc_eui2=AeG5Vul4hnqfEfFLxmJfaQdpJrQageMdYDQmtBqB4x1gNB8JtEgm7bNOHwnBRWFG7iFfkDp3BQsz-RSrvM53XvB2&_nc_ohc=uwDYbT3oa9IAX-apbl-&_nc_ht=scontent.fbkk28-1.fna&oh=00_AT8O5rADD6LRXyCgFLvOW8rbcfDntpHZjCjt2VsFTvi3RA&oe=61EBD840'),
      ),
    );
  }

  Widget profile() => Container(
        padding: EdgeInsets.only(bottom: 70),
        child: Image.network(
          'https://videohive.img.customer.envatousercontent.com/files/168872159/Binary%20Code%20Image%20Preview.jpg?auto=compress%2Cformat&fit=crop&crop=top&max-h=8000&max-w=590&s=bbc543b82eb4227674bb7573e86b5295',
          width: double.infinity,
          height: 280,
          fit: BoxFit.cover,
        ),
      );

  // Widget profile() {
  //   return Image.asset(
  //     'images/sad.jpg',
  //     fit: BoxFit.cover,
  //   );
  // }

  // Row myname() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       Padding(
  //         padding: const EdgeInsets.all(8.0),
  //         child: FaIcon(
  //           FontAwesomeIcons.gamepad,
  //           color: Colors.green,
  //         ),
  //       ),
  //       Text(
  //         "DELL THEERAPAT",
  //         style: GoogleFonts.itim(
  //           color: Colors.blue,
  //         ),
  //       ),
  //     ],
  //   );
  // }

  // Row birthday() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       Padding(
  //         padding: const EdgeInsets.all(8.0),
  //         child: Icon(Icons.person),
  //       ),
  //       Text(
  //         "29-05-2000",
  //         style: GoogleFonts.itim(
  //           color: Colors.blue,
  //         ),
  //       ),
  //     ],
  //   );
  // }
}
