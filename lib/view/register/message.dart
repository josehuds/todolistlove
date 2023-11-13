import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple, // Defina a cor desejada aqui
      body:  Center(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Mensagem no topo
                  const Text(
                    'Bem-vindo à minha tela!',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  const SizedBox(height: 20.0), // Espaçamento entre a mensagem e o botão
      
                  // Botão no meio
                  ElevatedButton(
                    onPressed: () {
                      // Adicione a lógica para o botão aqui
                    },
                    child: Text('Clique Aqui'),
                  ),
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
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.network(
                      'https://lh3.googleusercontent.com/drive-storage/AKHj6E4j9it_BlVExLVKhgU_TKqQ0V9SRVfN1AR2WGHoAQKOXDwcQN1quOXkJo7iuZnwkoqxLcCzTZ5wtIvQO4-47aQUKrL-2Y9BcirfXFf-_A=w999-h962',
                      width: 200.0,
                      height: 150.0,
                      fit: BoxFit.cover,
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