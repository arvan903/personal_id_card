import 'package:flutter/material.dart';
import 'package:rashid_khani_id_card/resume.dart';
import 'package:url_launcher/url_launcher.dart';

// in this part you must put your social media and CV links into these variables
const String github = "https://github.com/arvan903";
const String facebook = "https://www.facebook.com/rashid.khani.33";
const String twitter = "https://twitter.com/rashid_khani";
const String whatsapp = "https://wa.me/+989306056390";
const String linkedin = "https://www.linkedin.com/in/rashid-khani-038562123";
const String telegram = 'https://t.me/arvan903';
const String resume = 'https://cvbuilder.me/share/rashid_khani/en';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// these functions are related to your social media links by calling them , browser will lunch
  void fbURL() async {
    if (!await launch(facebook)) throw 'Could not launch $facebook';
  }

  void waURL() async {
    if (!await launch(whatsapp)) throw 'Could not launch $whatsapp';
  }

  void twURL() async {
    if (!await launch(twitter)) throw 'Could not launch $twitter';
  }

  void liURL() async {
    if (!await launch(linkedin)) throw 'Could not launch $linkedin';
  }

  void giURL() async {
    if (!await launch(github)) throw 'Could not launch $github';
  }

  void telURL() async {
    if (!await launch(telegram)) throw 'Could not launch $telegram';
  }

  void cvURL() async {
    if (!await launch(resume)) throw 'Could not launch $resume';
  }

  @override
  Widget build(BuildContext context) {
    //this is the body
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        title: Text(
          // title of the appbar
          'Rashid Khani Id Card',
          style: TextStyle(
              fontFamily: 'Pacifico',
              color: Colors.blue.shade900,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.orange,
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  // here is your avatar picture that you must insert it in images folder
                  backgroundImage: AssetImage('images/rashid.jpg'),
                  radius: 50,
                ),
                Text(
                  //your name
                  'Rashid Khani',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40,
                    color: Colors.blue.shade900,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  //your title
                  'Flutter Developer',
                  style: TextStyle(
                      fontFamily: 'SourceSanPro',
                      fontSize: 20,
                      color: Colors.teal.shade900,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  child: Divider(
                    color: Colors.teal.shade900,
                  ),
                  width: 150,
                  height: 20,
                ),
                Card(
                  color: Colors.blue.shade50,
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: OutlinedButton(
                    // by calling this it will call the number
                    onPressed: () {
                      //put your number to call
                      launch('tel:+989306056390');
                    },
                    child: ListTile(
                      leading: const Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      title: Text(
                        // your phone number
                        '+98 930 605 6390',
                        style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            color: Colors.teal.shade900,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.blue.shade50,
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: OutlinedButton(
                    //by calling this it will send mail
                    onPressed: () {
                      launch(
                          // you must edit this line with your personal info
                          'mailto:arvan903@hotmail.com?subject=Contacting you from ID card app title&body=Hello there');
                    },
                    child: ListTile(
                      leading: const Icon(Icons.email, color: Colors.teal),
                      title: Text(
                        // put your email address
                        'Arvan903@hotmail.com',
                        style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            color: Colors.teal.shade900,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: Divider(
                    color: Colors.teal.shade900,
                  ),
                  width: 150,
                  height: 20,
                ),
                Text(
                  // this part is related to social media links
                  'Social Media',
                  style: TextStyle(
                      fontFamily: 'SourceSanPro',
                      fontSize: 20,
                      color: Colors.teal.shade900,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold),
                ),
                Column(
                  children: const [
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //by clicking on these buttons the above-functions will call
                      TextButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange.shade600),
                        onPressed: fbURL,
                        child: Image.asset('images/Facebook.png'),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange.shade600),
                        onPressed: waURL,
                        child: Image.asset('images/Whatsapp.png'),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange.shade600),
                        onPressed: twURL,
                        child: Image.asset('images/twitter.png'),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange.shade600),
                        onPressed: liURL,
                        child: Image.asset('images/Linkedin.png'),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange.shade600),
                        onPressed: liURL,
                        child: Image.asset('images/Telegram.png'),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange.shade600),
                        onPressed: giURL,
                        child: Image.asset('images/Github.png'),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: const [
                    SizedBox(height: 20),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //this button is for you CV link
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.orange),
                      onPressed: () {
                        cvURL();
                      },
                      child: Text(
                        'Online CV',
                        style: TextStyle(
                            fontFamily: 'SourceSanPro',
                            letterSpacing: 1,
                            color: Colors.teal.shade900,
                            fontSize: 25),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.orange),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const CvViewer(),
                          ),
                        );
                      },
                      child: Text(
                        'Offline CV',
                        style: TextStyle(
                            fontFamily: 'SourceSanPro',
                            letterSpacing: 1,
                            color: Colors.teal.shade900,
                            fontSize: 25),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
