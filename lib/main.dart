import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
// import 'package:project/screens/product/insert_data.dart';
// import 'package:project/screens/product/fetch_data.dart';
// import 'package:project/screens/product/update_record.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Firebase'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Firebase Realtime Database Series in Flutter 2022',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 60,
            ),
            const Image(
              width: 300,
              height: 300,
              image: NetworkImage(
                  'https://image.shutterstock.com/image-photo/image-260nw-720519355.jpg'),
            ),
            const SizedBox(
              height: 60,
            ),
            // MaterialButton(
            //   onPressed: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => const InsertData()));
            //   },
            //   child: const Text('Insert Data'),
            //   color: Colors.blue,
            //   textColor: Colors.white,
            //   minWidth: 300,
            //   height: 40,
            // ),
            // const SizedBox(
            //   height: 30,
            // ),
            // MaterialButton(
            //   onPressed: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => const FetchData()));
            //   },
            //   child: const Text('Fetch Data'),
            //   color: Colors.blue,
            //   textColor: Colors.white,
            //   minWidth: 300,
            //   height: 40,
            // ),
          ],
        ),
      ),
    );
  }
}
