import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text('TS_5 Images')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 9.0,
                    spreadRadius: 1.0,
                    offset: Offset(5.0, 5.0),
                  )
                ],
              ),
              height: 200,
              width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/capuchin.jpg"),
                  const RotatedBox(
                      quarterTurns: 1,
                      child: Text('Capuchin',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)))
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 9.0,
                    spreadRadius: 1.0,
                    offset: Offset(4.0, 4.0),
                  )
                ],
              ),
              height: 200,
              width: 200,
              child: Center(
                child: CachedNetworkImage(
                  imageUrl:
                      "https://cdn.pixabay.com/photo/2023/08/12/04/24/mabry-mill-8184715_1280.jpg",
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                            colorFilter: const ColorFilter.mode(
                              Colors.orange,
                              BlendMode.colorBurn,
                            ))),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 9.0,
                        spreadRadius: 1.0,
                        offset: Offset(3.0, 3.5),
                      )
                    ],
                  ),
                  height: 200,
                  width: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        "https://cdn.pixabay.com/photo/2023/07/24/01/32/lizard-8145964_1280.jpg",
                      ),
                      const Text(
                        "Varan",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
