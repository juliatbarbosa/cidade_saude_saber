import 'package:flutter/material.dart';

class PageSolicitaSenha extends StatefulWidget {
  const PageSolicitaSenha({super.key});

  @override
  _PageSolicitaSenhaState createState() => _PageSolicitaSenhaState();
}

class _PageSolicitaSenhaState extends State<PageSolicitaSenha> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0.0),
          child: Container(),
        ),
        ),
    );
  }
}