import 'package:flutter/material.dart';
import 'package:todolistlove/view/tasck/creattasck_page.dart';

class ListPage extends StatefulWidget {
  ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<String> list = ['teste', 'teste2', 'teste3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 179, 26, 206),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [_logoLove()],
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 30,
                left: 20,
                right: 20,
              ),
              child: TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.search,
                      size: 40,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    filled: true,
                    hintStyle: TextStyle(),
                    hintText: 'Busque palavras-chave'),
              ),
            ),
            SizedBox(
              height: 450,
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    color: const Color.fromARGB(255, 235, 206, 119),
                    margin: const EdgeInsets.all(20),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(10),
                      title: Text(
                        list[index],
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      subtitle: const Text(
                        'descricao do item',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      trailing: const Icon(Icons.delete_outline_outlined),
                    ),
                  );
                },
              ),
            ),
            Center(
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const AddItem();
                    }),
                  );
                },
                icon: const Icon(Icons.add_rounded),
                color: Colors.white,
                iconSize: 80,
              ),
            )
          ],
        ),
      ),
    );
  }

  _logoLove() {
    return Container(
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
    );
  }
}
