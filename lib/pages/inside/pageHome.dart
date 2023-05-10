import 'package:flutter/material.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0.0),
          child: Container(),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width * 1,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xFF52658d),
                Color(0xFF00a85a),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
