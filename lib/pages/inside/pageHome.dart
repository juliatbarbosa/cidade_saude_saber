import 'package:cidade_sds/pages/outside/pageLogin.dart';
import 'package:flutter/material.dart';

import '../outside/pageInicial.dart';

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
      onWillPop: () async => true,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                width: 350,
                height: 160,
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
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topRight,
                      margin: const EdgeInsets.only(right: 25),
                      child: Image.asset(
                        'assets/images/logo-cidade-saude-e-saber-BRANCO.png',
                        height: 60,
                        width: 60,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 15, right: 10),
                          child: const Icon(
                            Icons.circle,
                            color: Colors.white,
                            size: 60,
                          ),
                        ),
                        const Text(
                          'Nome',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(left: 25, right: 15, top: 10),
                    child: const Icon(
                      Icons.person,
                      color: Color(0xFF27667c),
                      size: 25,
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'Meus Dados',
                        style: TextStyle(
                          color: Color(0xFF27667c),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      )),
                ],
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                  child: const Divider(
                    color: Colors.grey,
                    height: 36,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(left: 25, right: 15),
                    child: const Icon(
                      Icons.newspaper_outlined,
                      color: Color(0xFF27667c),
                      size: 25,
                    ),
                  ),
                  const Text(
                    'Notícias',
                    style: TextStyle(
                      color: Color(0xFF27667c),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                  child: const Divider(
                    color: Colors.grey,
                    height: 36,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(left: 25, right: 15),
                    child: const Icon(
                      Icons.people,
                      color: Color(0xFF27667c),
                      size: 25,
                    ),
                  ),
                  const Text(
                    'Quem Somos',
                    style: TextStyle(
                      color: Color(0xFF27667c),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                  child: const Divider(
                    color: Colors.grey,
                    height: 36,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(left: 25, right: 15),
                    child: const Icon(
                      Icons.map,
                      color: Color(0xFF27667c),
                      size: 25,
                    ),
                  ),
                  const Text(
                    'Tour 360º',
                    style: TextStyle(
                      color: Color(0xFF27667c),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                  child: const Divider(
                    color: Colors.grey,
                    height: 36,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(left: 25, right: 15),
                    child: const Icon(
                      Icons.book,
                      color: Color(0xFF27667c),
                      size: 25,
                    ),
                  ),
                  const Text(
                    'Conheça o Projeto',
                    style: TextStyle(
                      color: Color(0xFF27667c),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                  child: const Divider(
                    color: Colors.grey,
                    height: 36,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(left: 25, right: 15),
                    child: const Icon(
                      Icons.phone,
                      color: Color(0xFF27667c),
                      size: 25,
                    ),
                  ),
                  const Text(
                    'Telefone',
                    style: TextStyle(
                      color: Color(0xFF27667c),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                  child: const Divider(
                    color: Colors.grey,
                    height: 36,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 150),
                child: Container(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PageLogin(),
                        ),
                      );
                    },
                    child: Container(
                      width: 100,
                      height: 40,
                      margin: const EdgeInsets.only(top: 20, bottom: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color(0xFF276479),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(right: 10),
                          child: const Icon(
                            Icons.exit_to_app,
                            color: Colors.white,
                            size: 20,
                          ),
                          ),
                          const Text(
                            'Sair',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100.0),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            toolbarHeight: 100,
            centerTitle: true,
            title: SizedBox(
              child: Image.asset(
                'assets/images/logo-cidade-saude-e-saber-BRANCO.png',
                height: 80,
                width: 80,
              ),
            ),
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width * 1,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xFF119a64),
                Color(0xFF2a8573),
              ],
            ),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(
                          top: 130, left: 10, bottom: 10, right: 10),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        semanticContainer: true,
                        color: Colors.white,
                        child: SizedBox(
                          width: 400,
                          height: 370,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 25),
                            child: Column(
                              children: [
                                const Image(
                                    image: AssetImage(
                                        'assets/images/innovation.jpg')),
                                Container(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: const Text(
                                    'INNOVATION EXPERIENCE CSS | 2022',
                                    style: TextStyle(
                                        color: Color(0xFFf1a044),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 10, left: 10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(
                                                bottom: 10),
                                            width: 65,
                                            height: 65,
                                            decoration: const BoxDecoration(
                                                color: Color(0xFFf1a044),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(50))),
                                            child: const Icon(
                                              Icons.info_outline,
                                              color: Colors.white,
                                              size: 35,
                                            ),
                                          ),
                                          const Text(
                                            'INFORMAÇÕES',
                                            style: TextStyle(
                                              color: Color(0xFFf1a044),
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 10, left: 10),
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(
                                                bottom: 10),
                                            width: 65,
                                            height: 65,
                                            decoration: const BoxDecoration(
                                                color: Color(0xFFf1a044),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(50))),
                                            child: const Icon(
                                              Icons.calendar_today_outlined,
                                              color: Colors.white,
                                              size: 35,
                                            ),
                                          ),
                                          const Text(
                                            'PROGRAMAÇÃO',
                                            style: TextStyle(
                                              color: Color(0xFFf1a044),
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 10, left: 10),
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(
                                                bottom: 10),
                                            width: 65,
                                            height: 65,
                                            decoration: const BoxDecoration(
                                                color: Color(0xFFf1a044),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(50))),
                                            child: const Icon(
                                              Icons
                                                  .panorama_horizontal_outlined,
                                              color: Colors.white,
                                              size: 35,
                                            ),
                                          ),
                                          const Text(
                                            'EXPOSITORES',
                                            style: TextStyle(
                                              color: Color(0xFFf1a044),
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 140,
                    top: -15,
                    child: Container(
                      width: 120,
                      alignment: Alignment.center,
                      margin:
                          const EdgeInsets.only(top: 135, left: 10, right: 10),
                      padding: const EdgeInsets.only(
                          bottom: 5, top: 5, left: 5, right: 5),
                      decoration: BoxDecoration(
                        color: const Color(0xFF276479),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Text(
                        'DESTAQUE',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(
                          top: 20, left: 10, bottom: 10, right: 10),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        semanticContainer: true,
                        color: Colors.white,
                        child: const SizedBox(
                          width: 400,
                          height: 100,
                          child: Padding(
                            padding:
                                EdgeInsets.only(left: 20, right: 20, top: 30),
                            child: Text(
                              'Não temos notícias cadastradas para \n esse período!',
                              style: TextStyle(
                                color: Color(0xFFf1a044),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 140,
                    top: -15,
                    child: Container(
                      width: 120,
                      alignment: Alignment.center,
                      margin:
                          const EdgeInsets.only(top: 20, left: 10, right: 10),
                      padding: const EdgeInsets.only(
                          bottom: 5, top: 5, left: 5, right: 5),
                      decoration: BoxDecoration(
                        color: const Color(0xFF276479),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Text(
                        'NOTÍCIAS',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
