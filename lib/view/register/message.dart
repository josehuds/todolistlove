import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color.fromARGB(255, 179, 26, 206), // Defina a cor desejada aqui
      body: Center(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 300),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 179, 26, 206),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Mensagem no topo
                  const Text(
                    'Cadastro Concluido!',
                    style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                      height: 30.0), // Espaçamento entre a mensagem e o botão

                  // Botão no meio
                  ElevatedButton(
                    onPressed: () {
                      // Adicione a lógica para o botão aqui
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.blue.shade900),
                      padding: const MaterialStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 30),
                      ),
                    ),
                    child: const Text(
                      'Começar',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  elevation: 5.0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(200),
                      topRight: Radius.circular(200),
                    ),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 300,
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset(
                      'assets/image/semtitulo.png',
                      fit: BoxFit.none,
                      
                    ),
                    
                  
                  ),
                  
                  
                ),
                
              ),

              
            ),
           
          ],
        ),
      ),
    );
  }
}
