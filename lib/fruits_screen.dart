import 'package:flutter/material.dart';
import 'package:grid_view_task/fruits_list.dart';

class FruitsScreen extends StatefulWidget {
  const FruitsScreen({super.key});

  @override
  State<FruitsScreen> createState() => _FruitsScreenState();
}

class _FruitsScreenState extends State<FruitsScreen> {
  List<bool> isSelectedList = List.filled(fruits.length, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text(
          'Fruits Store',
          style: TextStyle(fontSize: 30),
        ),
        actions: const [
          Icon(
            Icons.shopping_cart,
            size: 35,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: GridView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: fruits.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 15, mainAxisSpacing: 20),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      fruits[index]["image"],
                      width: 80,
                      height: 80,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 60,
                          height: 30,
                          color: const Color.fromARGB(255, 7, 174, 13),
                          child: Text(
                            fruits[index]['price'],
                            style: const TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                isSelectedList[index] = !isSelectedList[index];
                              });
                            },
                            icon: Icon(fruits[index]['icon']),
                            color: isSelectedList[index]
                                ? Colors.red
                                : Colors.white,
                            iconSize: 28,
                          ),
                        )
                      ],
                    ),
                    Text(
                      fruits[index]['name'],
                      style: const TextStyle(
                          fontSize: 27, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
