import 'package:flutter/material.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:qr_flutter/qr_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var parser = EmojiParser();
  @override
  Widget build(BuildContext context) {
    final sizes = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFFBEAFC),
      body: SingleChildScrollView(
        physics: ScrollPhysics(parent: BouncingScrollPhysics()),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/maiza.png'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Maiza Louise',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink),
            ),
            Text('Flutter Developer - Member of #3 class of Road to GDE',
                style: TextStyle(fontSize: 20, color: Colors.pink)),
            Text(
              parser.emojify(
                '🇧🇷',
              ),
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Totally in love with tecnology since I was a kid.',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.pink,
                  fontWeight: FontWeight.w100),
            ),
            SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Divider(
                color: Colors.pink,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Education',
                style: TextStyle(fontSize: 20, color: Colors.pink)),
            SizedBox(
              height: 20,
            ),
            Text(
              'Technology | Database - FATEC Bauru',
              style: TextStyle(color: Colors.purple),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'July 2019 - July 2022',
              style: TextStyle(color: Colors.purple, fontSize: 10),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Divider(
                color: Colors.pink,
              ),
            ),
            Text('Skills', style: TextStyle(fontSize: 20, color: Colors.pink)),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0, end: 100),
                      builder: (context, double value, child) => Stack(
                        fit: StackFit.expand,
                        children: [
                          CircularProgressIndicator(
                            value: 100,
                            color: Colors.pink,
                          ),
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Flutter',
                                  style: TextStyle(color: Colors.pink),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      duration: Duration(milliseconds: 500),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0, end: 100),
                      builder: (context, double value, child) => Stack(
                        fit: StackFit.expand,
                        children: [
                          CircularProgressIndicator(
                            value: 80,
                            color: Colors.pink,
                          ),
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '.NET',
                                  style: TextStyle(color: Colors.pink),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      duration: Duration(milliseconds: 2000),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0, end: 100),
                      builder: (context, double value, child) => Stack(
                        fit: StackFit.expand,
                        children: [
                          CircularProgressIndicator(
                            value: 50,
                            color: Colors.pink,
                          ),
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'iOs',
                                  style: TextStyle(color: Colors.pink),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      duration: Duration(milliseconds: 500),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0, end: 100),
                      builder: (context, double value, child) => Stack(
                        fit: StackFit.expand,
                        children: [
                          CircularProgressIndicator(
                            value: 40,
                            color: Colors.pink,
                          ),
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Android',
                                  style: TextStyle(color: Colors.pink),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      duration: Duration(milliseconds: 500),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Divider(
                color: Colors.pink,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Professional Experience',
                style: TextStyle(fontSize: 20, color: Colors.pink)),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'DreamsBank - now',
                        style: TextStyle(fontSize: 15, color: Colors.pink),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Flutter',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.purple,
                    ),
                  ),
                  Text(
                    'Android',
                    style: TextStyle(fontSize: 12, color: Colors.purple),
                  ),
                  Text(
                    'iOs',
                    style: TextStyle(fontSize: 12, color: Colors.purple),
                  ),
                  Text(
                    'TDD + Clean Architecture',
                    style: TextStyle(fontSize: 12, color: Colors.purple),
                  ),
                  Text(
                    'Flutter - MOBX',
                    style: TextStyle(fontSize: 12, color: Colors.purple),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Neomode S.A - 2021 - now',
                      style: TextStyle(fontSize: 15, color: Colors.pink),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Flutter',
                  style: TextStyle(fontSize: 12, color: Colors.purple),
                ),
                Text(
                  'Android',
                  style: TextStyle(fontSize: 12, color: Colors.purple),
                ),
                Text(
                  'iOs',
                  style: TextStyle(fontSize: 12, color: Colors.purple),
                ),
                Text(
                  'MVVM + MVC',
                  style: TextStyle(fontSize: 12, color: Colors.purple),
                ),
                Text(
                  'Flutter - MOBX',
                  style: TextStyle(fontSize: 12, color: Colors.purple),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Gama Soluções em Tecnologia - 2019 - 2021',
                  style: TextStyle(fontSize: 15, color: Colors.pink),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Xamarin Forms',
                  style: TextStyle(fontSize: 12, color: Colors.purple),
                ),
                Text(
                  '.Net',
                  style: TextStyle(fontSize: 12, color: Colors.purple),
                ),
                Text(
                  'Flutter',
                  style: TextStyle(fontSize: 12, color: Colors.purple),
                ),
                Text(
                  'Android',
                  style: TextStyle(fontSize: 12, color: Colors.purple),
                ),
                Text(
                  'iOs',
                  style: TextStyle(fontSize: 12, color: Colors.purple),
                ),
                Text(
                  'MVVM + MVC',
                  style: TextStyle(fontSize: 12, color: Colors.purple),
                ),
                Text(
                  'Flutter - GETX',
                  style: TextStyle(fontSize: 12, color: Colors.purple),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Divider(
                color: Colors.pink,
              ),
            ),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Text(
            //       'Apps that I have worked on:',
            //       style: TextStyle(fontSize: 20, color: Colors.pink),
            //     ),
            //   ],
            // ),
            // SingleChildScrollView(
            //   physics: ScrollPhysics(parent: BouncingScrollPhysics()),
            //   child: Container(
            //     child: Row(
            //       mainAxisSize: MainAxisSize.min,
            //       children: [
            //         Image(
            //           image: Image.asset('assets/1.webp').image,
            //           height: 500,
            //           width: 200,
            //         ),
            //         Image(
            //           image: Image.asset('assets/2.webp').image,
            //           height: 500,
            //           width: 200,
            //         ),
            //         Image(
            //           image: Image.asset('assets/3.webp').image,
            //           height: 500,
            //           width: 200,
            //         ),
            //         Image(
            //           image: Image.asset('assets/4.webp').image,
            //           height: 500,
            //           width: 200,
            //         ),
            //         Image(
            //           image: Image.asset('assets/5.webp').image,
            //           height: 500,
            //           width: 200,
            //         ),
            //         Image(
            //           image: Image.asset('assets/6.webp').image,
            //           height: 500,
            //           width: 200,
            //         ),
            //         Image(
            //           image: Image.asset('assets/9.webp').image,
            //           height: 600,
            //           width: 200,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            Text('Social media:',
                style: TextStyle(fontSize: 13, color: Colors.pink)),
            QrImage(
              data: 'https://linktr.ee/maizalouise',
              version: QrVersions.auto,
              size: 200.0,
            ),
          ],
        ),
      ),
    );
  }
}
