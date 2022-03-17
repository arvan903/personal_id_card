import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const String github = "https://github.com/arvan903";
const String facebook = "https://www.facebook.com/rashid.khani.33";
const String twitter = "https://twitter.com/rashid_khani";
const String whatsapp = "https://wa.me/+989306056390";
const String linkedin = "https://www.linkedin.com/in/rashid-khani-038562123";
const String telegram = 'https://t.me/arvan903';
const String resume = 'https://cvbuilder.me/share/rashid_khani/en';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange.shade700,
            title: Center(
              child: Text(
                'Rashid Khani Id Card',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    color: Colors.blue.shade900,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
          backgroundColor: Colors.orange,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: giURL,
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('images/rashid.jpg'),
                    radius: 50,
                  ),
                ),
                Text(
                  'Rashid Khani',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40,
                    color: Colors.blue.shade900,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
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
                  child: ListTile(
                      leading: const Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      title: Text(
                        '+98 930 605 6390',
                        style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            color: Colors.teal.shade900,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      )),
                ),
                Card(
                  color: Colors.blue.shade50,
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                      leading: const Icon(Icons.email, color: Colors.teal),
                      title: Text(
                        'Arvan903@hotmail.com',
                        style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            color: Colors.teal.shade900,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      )),
                ),
                SizedBox(
                  child: Divider(
                    color: Colors.teal.shade900,
                  ),
                  width: 150,
                  height: 20,
                ),
                Text(
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
                Flexible(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange.shade600),
                        onPressed: fbURL,
                        child: Image.asset('images/Facebook.png'),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange.shade600),
                        onPressed: waURL,
                        child: Image.asset('images/Whatsapp.png'),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange.shade600),
                        onPressed: twURL,
                        child: Image.asset('images/twitter.png'),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange.shade600),
                        onPressed: liURL,
                        child: Image.asset('images/Linkedin.png'),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange.shade600),
                        onPressed: liURL,
                        child: Image.asset('images/Telegram.png'),
                      )
                    ],
                  ),
                ),
                Column(
                  children: const [
                    SizedBox(height: 20),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.orange),
                        onPressed: () {
                          cvURL();
                        },
                        child: Text(
                          'Click To View Full CV',
                          style: TextStyle(
                              fontFamily: 'SourceSanPro',
                              letterSpacing: 1,
                              color: Colors.teal.shade900,
                              fontSize: 25),
                        ))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
