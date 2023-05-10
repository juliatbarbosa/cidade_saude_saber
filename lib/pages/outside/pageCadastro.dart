import 'dart:ui';
import 'package:easy_mask/easy_mask.dart';
import 'package:cidade_sds/pages/outside/pageInicial.dart';
import 'package:flutter/material.dart';

class PageCadastro extends StatefulWidget {
  const PageCadastro({Key? key}) : super(key: key);

  @override
  _PageCadastroState createState() => _PageCadastroState();
}

enum Person { fisica, juridica }

class _PageCadastroState extends State<PageCadastro> {
  Person? _person = Person.fisica;
  bool checkedValue = false;

  final dropValueUF = ValueNotifier('');
  final dropValueCid = ValueNotifier('');
  final dropOpcoesUF = ['MG', 'SP', 'RJ'];
  final dropOpcoesCid = [
    'São Sebastião do Paraíso',
    'São Paulo',
    'Rio de Janeiro'
  ];

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
/* ---------------------------DADOS PESSOAIS------------------------------ */

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
                    height: 320,
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
                              inputFormatters: [
                                TextInputMask(
                                    mask: ['999.999.999-99'], reverse: false),
                              ],
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
                              inputFormatters: [
                                TextInputMask(
                                    mask: ['99/99/9999'], reverse: false),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

/* ---------------------------CONTATO----------------------------------- */

              Container(
                color: const Color(0xFFf6f6f6),
                alignment: Alignment.center,
                margin: const EdgeInsets.only(
                    top: 0, bottom: 20, left: 20, right: 20),
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
                    height: 280,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 15),
                      child: Column(
                        children: [
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
                            padding: const EdgeInsets.only(
                                left: 20, bottom: 5, top: 5),
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
                            padding: const EdgeInsets.only(
                                left: 15, right: 15, bottom: 8),
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
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(left: 20, bottom: 5),
                            child: const Text(
                              'Celular',
                              style: TextStyle(
                                  color: Color(0xFFa2a2a2),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(
                                left: 15, right: 15, bottom: 8),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'Celular',
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
                              inputFormatters: [
                                TextInputMask(mask: [
                                  '(99) 9 9999-9999',
                                  '(99) 9999-9999'
                                ], reverse: false),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(left: 20, bottom: 5),
                            child: const Text(
                              'Telefone',
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
                                hintText: 'Telefone',
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
                              inputFormatters: [
                                TextInputMask(
                                    mask: ['(99) 9999-9999'], reverse: false),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

/* ---------------------------TRABALHO----------------------------------- */

              Container(
                color: const Color(0xFFf6f6f6),
                alignment: Alignment.center,
                margin: const EdgeInsets.only(
                    top: 0, bottom: 20, left: 20, right: 20),
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
                    height: 210,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 15),
                      child: Column(
                        children: [
                          const Text(
                            'Trabalho',
                            style: TextStyle(
                              color: Color(0xFFa2a2a2),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(
                                left: 20, bottom: 5, top: 5),
                            child: const Text(
                              'Empresa / Instituição',
                              style: TextStyle(
                                  color: Color(0xFFa2a2a2),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(
                                left: 15, right: 15, bottom: 8),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'Empresa',
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
                            padding: const EdgeInsets.only(left: 20, bottom: 5),
                            child: const Text(
                              'Cargo',
                              style: TextStyle(
                                  color: Color(0xFFa2a2a2),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(
                                left: 15, right: 15, bottom: 8),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'Cargo',
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

/* ---------------------------CIDADE----------------------------------- */

              Container(
                color: const Color(0xFFf6f6f6),
                alignment: Alignment.center,
                margin: const EdgeInsets.only(
                    top: 0, bottom: 20, left: 20, right: 20),
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
                    height: 115,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 15),
                      child: Column(
                        children: [
                          const Expanded(
                            child: Text(
                              'Cidade',
                              style: TextStyle(
                                color: Color(0xFFa2a2a2),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            //padding: const EdgeInsets.only(left: 10),
                            child: Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: ValueListenableBuilder(
                                        valueListenable: dropValueUF,
                                        builder: (BuildContext context,
                                            String value, _) {
                                          return SizedBox(
                                            width: 220,
                                            child:
                                                DropdownButtonFormField<String>(
                                              isExpanded: true,
                                              icon: const Icon(
                                                Icons.arrow_drop_down,
                                                color: Color(0xFFa2a2a2),
                                              ),
                                              decoration: const InputDecoration(
                                                hintText: 'UF',
                                                hintStyle: TextStyle(
                                                    fontSize: 14,
                                                    color: Color(0xFFa2a2a2)),
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Color(0xFFa2a2a2)),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Color(0xFFa2a2a2)),
                                                ),
                                              ),
                                              style: const TextStyle(
                                                  color: Color(0xFFa2a2a2)),
                                              value: (value.isEmpty)
                                                  ? null
                                                  : value,
                                              onChanged: (escolha) =>
                                                  dropValueUF.value =
                                                      escolha.toString(),
                                              items: dropOpcoesUF
                                                  .map(
                                                    (opcao) => DropdownMenuItem(
                                                      value: opcao,
                                                      child: Text(opcao),
                                                    ),
                                                  )
                                                  .toList(),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: ValueListenableBuilder(
                                        valueListenable: dropValueCid,
                                        builder: (BuildContext context,
                                            String value, _) {
                                          return SizedBox(
                                            width: 220,
                                            child:
                                                DropdownButtonFormField<String>(
                                              isExpanded: true,
                                              icon: const Icon(
                                                Icons.arrow_drop_down,
                                                color: Color(0xFFa2a2a2),
                                              ),
                                              decoration: const InputDecoration(
                                                hintText: 'Cidade',
                                                hintStyle: TextStyle(
                                                    fontSize: 14,
                                                    color: Color(0xFFa2a2a2)),
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Color(0xFFa2a2a2)),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Color(0xFFa2a2a2)),
                                                ),
                                              ),
                                              style: const TextStyle(
                                                  color: Color(0xFFa2a2a2)),
                                              value: (value.isEmpty)
                                                  ? null
                                                  : value,
                                              onChanged: (escolha) =>
                                                  dropValueCid.value =
                                                      escolha.toString(),
                                              items: dropOpcoesCid
                                                  .map(
                                                    (opcao) => DropdownMenuItem(
                                                      value: opcao,
                                                      child: Text(opcao),
                                                    ),
                                                  )
                                                  .toList(),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

/* ---------------------------SENHA----------------------------------- */

              Container(
                color: const Color(0xFFf6f6f6),
                alignment: Alignment.center,
                margin: const EdgeInsets.only(
                    top: 0, bottom: 0, left: 20, right: 20),
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
                    height: 210,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 15),
                      child: Column(
                        children: [
                          const Text(
                            'Senha',
                            style: TextStyle(
                              color: Color(0xFFa2a2a2),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(
                                left: 20, bottom: 5, top: 5),
                            child: const Text(
                              'Senha',
                              style: TextStyle(
                                  color: Color(0xFFa2a2a2),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(
                                left: 15, right: 15, bottom: 8),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'Senha',
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
                              obscureText: true,
                              style: const TextStyle(color: Colors.black),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(left: 20, bottom: 5),
                            child: const Text(
                              'Repita a senha',
                              style: TextStyle(
                                  color: Color(0xFFa2a2a2),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(
                                left: 15, right: 15, bottom: 8),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'Repita a Senha',
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
                              obscureText: true,
                              style: const TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

/* ---------------------------CHECKBOX----------------------------------- */

              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Checkbox(
                      value: checkedValue,
                      onChanged: (bool? value) {
                        setState(() {
                          checkedValue = value!;
                        });
                      },
                    ),
                    const Text(
                      'Eu li e concordo com os',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),

/* ---------------------------TERMOS----------------------------------- */

              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Termos de Uso',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF276479),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  Text(
                    ' e ',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Políticas de Privacidade',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF276479),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              
/* ---------------------------BOTÃO----------------------------------- */

              Container(
                  width: 280,
                  height: 40,
                  margin: const EdgeInsets.only(top: 20, bottom: 20),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xFF276479),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const[
                       BoxShadow(
                        color: Colors.black26,
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const Text(
                    'CADASTRAR',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                        textAlign: TextAlign.center,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}