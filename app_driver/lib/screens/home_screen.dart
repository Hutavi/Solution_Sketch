import 'package:app_driver/services/dio_client.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  static const path = '/home';
  static const name = 'MyHomePage';
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String data = '';
  @override
  void initState() {
    super.initState();
  }

  void connectServer() {
    fetchData();
  }

  void fetchData() async {
    try {
      final dio = DioClient();
      final response = await dio.request('/techstack/getAllTechStack',
          options: Options(method: 'GET'));
      if (response.statusCode == 200) {
        setState(() {
          data = response.data['result'].toString();
        });
        print("object");
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Press to connect to the server:',
            ),
            Center(
              child: data.isNotEmpty
                  ? Text('Connect server successfully: $data')
                  : const Text('No data available'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: connectServer,
              child: const Text('Connect'),
            ),
          ],
        ),
      ),
    );
  }
}
