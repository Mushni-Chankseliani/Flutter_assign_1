import 'package:flutter/material.dart';

void main() {
  runApp(const AnimalsApp());
}

class AnimalsApp extends StatelessWidget {
  const AnimalsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Animals',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool showText = false;
  String imageUrl =
      'https://i1.sndcdn.com/artworks-000810672895-5vv94q-t500x500.jpg';

  void updateImage(String newImageUrl) {
    setState(() {
      imageUrl = newImageUrl;
    });
  }

  ButtonStyle buttonStyle = TextButton.styleFrom(
      primary: Colors.white,
      backgroundColor: Colors.teal,
      shape: const BeveledRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5))));

  // ვეცადე რაღაცები გამეგლობალურებინა, უბრალოდ არ ჯერ ვიცი რამდენად სწორი მიდგომაა
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animals'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 50.0),
              child: Image.network(imageUrl,
                  width: 300, height: 300, fit: BoxFit.cover),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                margin: const EdgeInsets.only(right: 20.0),
                child: TextButton(
                  style: buttonStyle,
                  onPressed: () {
                    updateImage(
                        'https://i1.sndcdn.com/artworks-000810672895-5vv94q-t500x500.jpg');
                  },
                  child: const Text('Doggo'),
                ),
              ),
              TextButton(
                style: buttonStyle,
                onPressed: () {
                  updateImage(
                      'https://i.ytimg.com/vi/WxGEvT9Tquw/hqdefault.jpg');
                },
                child: const Text('Catto'),
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                margin: const EdgeInsets.only(right: 20.0),
                child: TextButton(
                  style: buttonStyle,
                  onPressed: () {
                    updateImage(
                        'https://i.pinimg.com/originals/21/5b/ec/215bec980cbbbe1575368b5e97d84073.jpg');
                  },
                  child: const Text('Giraffee'),
                ),
              ),
              TextButton(
                style: buttonStyle,
                onPressed: () {
                  updateImage(
                      'https://pbs.twimg.com/media/EGS8zlUWsAIRfi5.png');
                },
                child: const Text('Chachi'),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
