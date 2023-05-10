import 'package:flutter/material.dart';
import 'pageCadastro.dart';
import 'pageLogin.dart';

class PageInicial extends StatefulWidget {
  const PageInicial({super.key});

  @override
  _PageInicialState createState() => _PageInicialState();
}

class _PageInicialState extends State<PageInicial> {
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
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF52658d),
                Color(0xFF00a85a),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

/* ---------------------------IMAGEM LOGOS------------------------------ */
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage('assets/images/logoSCPassos-branco.png'),
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    margin: const EdgeInsets.only(top: 20, left: 40, right: 40),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/logo-cidade-saude-e-saber-BRANCO.png'),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/logoagely-branco.png'),
                      ),
                    ),
                  ),
                ],
              ),
              
/* ---------------------------FRASE 1 ------------------------------ */
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFf3a044),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50.0),
                  ),
                ),
                padding: const EdgeInsets.only(
                    left: 20, top: 10, right: 192, bottom: 10),
                margin: const EdgeInsets.only(top: 10),
                child: RichText(
                  text: const TextSpan(
                    text: 'O SONHO POSSÍVEL DE \n ',
                    style: TextStyle(fontSize: 14),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'VIDA SAUDÁVEL',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      TextSpan(
                          text: ' PARA TODOS!', style: TextStyle(fontSize: 14)),
                    ],
                  ),
                ),
              ),
              
/* ---------------------------IMAGEM INICIAL------------------------------ */
              Container(
                height: 200,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/imagem-pageInicial.jpg'),
                  ),
                ),
              ),

/* ---------------------------FRASE 2------------------------------ */
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: RichText(
                  text: const TextSpan(
                    text: 'CONHEÇA ESSE DESTRITO \n',
                    style: TextStyle(fontSize: 18),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' DE INOVAÇÃO', style: TextStyle(fontSize: 18)),
                      TextSpan(
                          text: ' À SERVIÇO DA VIDA!',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

/* ---------------------------BOTÃO LOGIN------------------------------ */
              GestureDetector(
                onTap: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PageLogin(),
                    ),
                  );
                },
                child: Container(
                  width: 380,
                  height: 40,
                  margin: const EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xFFf3a044),
                    borderRadius: BorderRadius.circular(10),
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
                    'LOGIN',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
              ),
              
/* ---------------------------BOTÃO CRIAR CONTA------------------------------ */
              GestureDetector(
                onTap: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  PageCadastro(),
                    ),
                  );
                },
                child: Container(
                  width: 380,
                  height: 40,
                  margin: const EdgeInsets.only(top: 20),
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
                    'CRIAR CONTA',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
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

