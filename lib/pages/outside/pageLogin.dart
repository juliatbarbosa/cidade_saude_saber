import 'dart:ui';

import 'package:cidade_sds/pages/inside/pageHome.dart';
import 'package:cidade_sds/pages/outside/pageCadastro.dart';
import 'package:cidade_sds/pages/outside/pageInicial.dart';
import 'package:cidade_sds/pages/outside/recuperarSenha/pageSolicitaSenha.dart';
import 'package:flutter/material.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  _PageLoginState createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  @override
  void initState() {
    super.initState();
  }

  bool light = false;

  @override
  Widget build(BuildContext context) {

/* ---------------------------INPUT EMAIL------------------------------ */
    final txtDocumento = Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: TextFormField(
        decoration: const InputDecoration(
          isDense: true,
          filled: false,
          fillColor: Colors.transparent,
          contentPadding: EdgeInsets.all(16),
          hintText: 'E-mail',
          hintStyle: TextStyle(color: Colors.white, fontSize: 16),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(color: Colors.white, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(color: Color(0xFFf3a044), width: 2.0),
          ),
        ),
        style: const TextStyle(color: Colors.white),
      ),
    );

/* ---------------------------ESQUECEU A SENHA------------------------------ */
    final esqueciConta = Container(
      alignment: Alignment.topRight,
      padding: const EdgeInsets.only(right: 40),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PageSolicitaSenha()));
        },
        child: const Text(
          'ESQUECEU A SENHA',
          style: TextStyle(
            color: Color(0xFFf3a044),
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );

/* ---------------------------INPUT SENHA------------------------------ */
    final txtSenha = Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: TextFormField(
        decoration: const InputDecoration(
          isDense: true,
          filled: false,
          fillColor: Colors.transparent,
          contentPadding: EdgeInsets.all(16),
          hintText: 'Senha',
          hintStyle: TextStyle(color: Colors.white, fontSize: 16),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(color: Colors.white, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(color: Color(0xFFf3a044), width: 2.0),
          ),
        ),
      ),
    );

    return WillPopScope(
      onWillPop: () async => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const PageInicial()))
          as Future<bool>,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0.0),
          child: Container(),
        ),
        body: Container(
            height: MediaQuery.of(context).size.height * 1,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF52658c),
                  Color(0xFF00a85a),
                ],
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

/* ---------------------------IMAGEM LOGIN------------------------------ */
                  Container(
                    height: 280,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 50),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/imagem-login.jpg'),
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 20), //INPUT EMAIL
                  txtDocumento,
                  const SizedBox(height: 10), //ESQUECEU A CONTA
                  esqueciConta,
                  const SizedBox(height: 20), //INPUT SENHA
                  txtSenha,

/* ---------------------------LEMBRAR-ME------------------------------ */
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Switch(
                        value: light,
                        activeColor: const Color(0xFF276479),
                        activeTrackColor: const Color(0xFF92bfd3),
                        inactiveThumbColor: const Color(0xFF92c0d1),
                        inactiveTrackColor: const Color(0xFFf6f6f6),
                        onChanged: (bool value) {
                          setState(() {
                            light = value;
                          });
                        },
                      ),
                      const Text(
                        'Lembrar-me',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                  
/* ---------------------------BOTÃO LOGIN------------------------------ */
                  Container(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () async {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PageHome(),
                          ),
                        );
                      },
                      child: Container(
                        width: 380,
                        height: 40,
                        margin: const EdgeInsets.only(bottom: 30),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xFFf3a044),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: const Text(
                          'LOGIN',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  
/* ---------------------------NÃO POSSUI UMA CONTA?------------------------------ */
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Não possui uma conta?   ',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>  PageCadastro()));
                        },
                        child: const Text(
                          'Cadastre-se',
                          style: TextStyle(
                            color: Color(0xFFf3a044),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                
                ],
              ),
            )),
      ),
    );
  }
}
