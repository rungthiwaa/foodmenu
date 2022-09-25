import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List<List<dynamic>> foodlists = [
    [
      "https://tse2.mm.bing.net/th?id=OIP.cAlMt1wodjT1Hl-WWDRhWAHaEK&pid=Api&P=0",
      "เบคอนไข่ดาว",
      150
    ],
    [
      "https://tse2.mm.bing.net/th?id=OIP.UUFZZYCojP1CyWx15v2FxwHaEK&pid=Api&P=0",
      "สเต็กโคขุน",
      279
    ],
    [
      "https://live.staticflickr.com/7409/15794032744_b48777832a_z.jpg",
      "ผัดไทย",
      100
    ],
    [
      "https://tse4.mm.bing.net/th?id=OIP.7wj-ZgJGnwwpXpFfAeBfAAHaE8&pid=Api&P=0",
      "ซีซาร์สลัดมังสวิรัต",
      179
    ],
    [
      "https://tse4.mm.bing.net/th?id=OIP.x5RD6-GEIm2aCmJWfYXAPQHaE8&pid=Api&P=0",
      "กุ้งแช่น้ำปลาแท้ดั้งเดิม",
      200
    ],
    [
      "https://tse3.mm.bing.net/th?id=OIP.nyh9LoSm9rYJk4GIvoMUDwHaE8&pid=Api&P=0",
      "สปาเกตตี้ขี้เมา",
      199
    ],
    [
      "https://tse1.mm.bing.net/th?id=OIP.5F5WnataPkU6kxyBqYR0QwHaDp&pid=Api&P=0",
      "ชุดน้ำพริกผักสด",
      129
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: foodlists.length,
        itemBuilder: (_, index) {
          return Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
            child: Container(
              height: 100,
              width: double.infinity,
              child: Stack(
                children: [
                  Row(
                    children: [
                      Image.network(
                        foodlists[index][0],
                        fit: BoxFit.cover,
                        width: 100,
                      ),
                      Expanded(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${foodlists[index][1]} ฿",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "${foodlists[index][2]}",
                                style: TextStyle(
                                  color: Colors.brown,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    alignment: Alignment.bottomRight,
                    child: Chip(
                        backgroundColor: Colors.orange,
                        label: Text(
                          "Oeder Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                          ),
                        )),
                  )
                ],
              ),
            ),
          );
        });
  }
}
