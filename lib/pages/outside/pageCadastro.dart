import 'dart:ui';

import 'package:cidade_sds/pages/outside/pageInicial.dart';
import 'package:flutter/material.dart';

class PageCadastro extends StatefulWidget {
  const PageCadastro({super.key});

  @override
  _PageCadastroState createState() => _PageCadastroState();
}

enum Person { fisica, juridica }

class _PageCadastroState extends State<PageCadastro> {
  //String? person;
  Person? _person = Person.fisica;
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
          preferredSize: const Size.fromHeight(120.0),
          child: AppBar(
            toolbarHeight: 120,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: <Color>[Color(0xFF2f6483), Color(0xFF2f7a76)],
                ),
              ),
            ),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PageInicial())),
            ),
            leadingWidth: 50,
            centerTitle: true,
            title: SizedBox(
              height: 100,
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/logo-cidade-saude-e-saber-BRANCO.png',
                    height: 60,
                    width: 60,
                  ),
                  Container(
                    width: 100,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(
                        bottom: 5, top: 5, left: 5, right: 5),
                    decoration: BoxDecoration(
                      color: const Color(0xFF4a8660),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      'Cadastro',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: const Color(0xFFf6f6f6),
                alignment: Alignment.center,
                margin: const EdgeInsets.all(20.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 6,
                  semanticContainer: true,
                  shadowColor: Colors.black,
                  color: const Color(0xFFFFFFFF),
                  child: SizedBox(
                    width: 400,
                    height: 330,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 10),
                      child: Column(
                        children: [
                          const Text(
                            'Dados Pessoais',
                            style: TextStyle(
                              color: Color(0xFFa2a2a2),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: ListTile(
                                  horizontalTitleGap: -10,
                                  title: const Text(
                                    'Pessoa Física',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  leading: Radio<Person>(
                                    value: Person.fisica,
                                    activeColor: Colors.black,
                                    groupValue: _person,
                                    onChanged: (Person? value) {
                                      setState(() {
                                        _person = value;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                child: ListTile(
                                  horizontalTitleGap: -10,
                                  title: const Text(
                                    'Pessoa Juridica',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  leading: Radio<Person>(
                                    value: Person.juridica,
                                    activeColor: Colors.black,
                                    groupValue: _person,
                                    onChanged: (Person? value) {
                                      setState(() {
                                        _person = value;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(left: 20, bottom: 5),
                            child: const Text(
                              'Nome',
                              style: TextStyle(
                                  color: Color(0xFFa2a2a2),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'Nome',
                                hintStyle: TextStyle(
                                    color: Color(0xFFa2a2a2), fontSize: 13),
                                filled: true,
                                fillColor: Color(0xFFf6f6f6),
                                contentPadding: EdgeInsets.only(
                                    left: 5, right: 8, top: 5, bottom: 5),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    borderSide:
                                        BorderSide(color: Color(0xFFf6f6f6))),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFf3a044), width: 2.0),
                                ),
                              ),
                              style: const TextStyle(color: Colors.black),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(
                                left: 20, bottom: 5, top: 10),
                            child: const Text(
                              'CPF',
                              style: TextStyle(
                                  color: Color(0xFFa2a2a2),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'CPF',
                                hintStyle: TextStyle(
                                    color: Color(0xFFa2a2a2), fontSize: 13),
                                filled: true,
                                fillColor: Color(0xFFf6f6f6),
                                contentPadding: EdgeInsets.only(
                                    left: 5, right: 8, top: 5, bottom: 5),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    borderSide:
                                        BorderSide(color: Color(0xFFf6f6f6))),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFf3a044), width: 2.0),
                                ),
                              ),
                              style: const TextStyle(color: Colors.black),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(
                                left: 20, bottom: 5, top: 10),
                            child: const Text(
                              'Data de Nascimento',
                              style: TextStyle(
                                  color: Color(0xFFa2a2a2),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'Data de Nascimento',
                                hintStyle: TextStyle(
                                    color: Color(0xFFa2a2a2), fontSize: 13),
                                filled: true,
                                fillColor: Color(0xFFf6f6f6),
                                contentPadding: EdgeInsets.only(
                                    left: 5, right: 8, top: 5, bottom: 5),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    borderSide:
                                        BorderSide(color: Color(0xFFf6f6f6))),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFf3a044), width: 2.0),
                                ),
                              ),
                              style: const TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                color: const Color(0xFFf6f6f6),
                alignment: Alignment.center,
                margin: const EdgeInsets.all(20.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 6,
                  semanticContainer: true,
                  shadowColor: Colors.black,
                  color: const Color(0xFFFFFFFF),
                  child: SizedBox(
                    width: 400,
                    height: 330,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 10),
                      child: Column(
                        children:  [
                          const Text(
                            'Contato',
                            style: TextStyle(
                              color: Color(0xFFa2a2a2),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(left: 20, bottom: 5),
                            child: const Text(
                              'Email',
                              style: TextStyle(
                                  color: Color(0xFFa2a2a2),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'Email',
                                hintStyle: TextStyle(
                                    color: Color(0xFFa2a2a2), fontSize: 13),
                                filled: true,
                                fillColor: Color(0xFFf6f6f6),
                                contentPadding: EdgeInsets.only(
                                    left: 5, right: 8, top: 5, bottom: 5),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    borderSide:
                                        BorderSide(color: Color(0xFFf6f6f6))),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFf3a044), width: 2.0),
                                ),
                              ),
                              style: const TextStyle(color: Colors.black),
                            ),
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
      ),
    );
  }
}





















/* 

 */
