import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const String github = "https://github.com/arvan903";
const String facebook = "https://www.facebook.com/rashid.khani.33";
const String twitter = "https://twitter.com/rashid_khani";
const String whatsapp = "https://wa.me/+989306056390";
const String linkedin = "https://www.linkedin.com/in/rashid-khani-038562123";


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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal.shade900,
            title: const Center(
              child: Text(
                'Rashid Khani Id Card',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
          backgroundColor: Colors.teal,
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
                const Text(
                  'Rashid Khani',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Flutter Developer',
                  style: TextStyle(
                      fontFamily: 'SourceSanPro',
                      fontSize: 20,
                      color: Colors.teal.shade100,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                  width: 150,
                  height: 20,
                ),
                Card(
                  // padding: const EdgeInsets.all(10),
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(

                      // trailing: const Text('Call Me!'),

                      // subtitle: const Text('This Is My Phone Number'),
                      leading: const Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      title: Text(
                        '+98 930 605 6390',
                        style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            color: Colors.teal.shade900,
                            fontSize: 20),
                      )),
                ),
                Card(
                  // padding: EdgeInsets.all(10),
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                      leading: const Icon(Icons.email, color: Colors.teal),
                      title: Text(
                        'Arvan903@hotmail.com',
                        style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            color: Colors.teal.shade900,
                            fontSize: 20),
                      )),
                ),
                SizedBox(
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                  width: 150,
                  height: 20,
                ),
                Text(
                  'Social Media',
                  style: TextStyle(
                      fontFamily: 'SourceSanPro',
                      fontSize: 20,
                      color: Colors.teal.shade100,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: fbURL,
                      child: Image.asset('images/Facebook.png'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    TextButton(
                      onPressed: waURL,
                      child: Image.asset('images/Whatsapp.png'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    TextButton(
                      onPressed: twURL,
                      child: Image.asset('images/twitter.png'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    TextButton(
                      onPressed: liURL,
                      child: Image.asset('images/Linkedin.png'),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
