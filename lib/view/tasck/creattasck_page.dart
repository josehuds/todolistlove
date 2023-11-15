import 'package:flutter/material.dart';

class AddItem extends StatefulWidget {
  const AddItem({super.key});

  @override
  State<AddItem> createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  Widget colorButton(int color) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 50,
        margin: const EdgeInsets.only(
          right: 25,
        ),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(color),
            shape: const CircleBorder(),
          ),
          child: const Text(''),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 179, 26, 206),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  alignment: const Alignment(-1.0, -1.0),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(100),
                      ),
                      color: Colors.white),
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Image.asset(
                    'assets/images/lovepeople_logo.png',
                    height: 45,
                    width: 45,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  width: 55,
                ),
                const Text(
                  'Nova Tarefa',
                  style: TextStyle(
                      fontFamily: 'Monteserrat-Semibold',
                      fontSize: 25,
                      color: Colors.white),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 20, right: 20, left: 20),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Color(0xFF3101B9)),
                      hintText: 'Título da Tarefa'),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 250,
              width: 620,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextFormField(
                style: const TextStyle(
                  fontFamily: 'Tahoma',
                  fontSize: 18,
                ),
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  hintText: 'Escreva uma descrição para sua tarefa',
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  colorButton(0xFFFFF2CC),
                  colorButton(0xFFffD0BD),
                  colorButton(0xFFffD0BD),
                  colorButton(0xFFCAFBFF),
                  colorButton(0xFFE3FFE6),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                
                children: [
                  Expanded(
                    flex: 2,
                    child: IconButton(
                      alignment: Alignment.centerLeft,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.close_rounded,
                        size: 100,
                      ),
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.check_rounded,
                        size: 100,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
