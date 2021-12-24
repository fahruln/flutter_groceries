import 'package:flutter/material.dart';

void main() {
  runApp(BeveragesPage());
}

class BeveragesPage extends StatelessWidget {
  const BeveragesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 27),
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Banda Aceh, Simpang Lima',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(vertical: 20),
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffF2F3F2)),
                child: TextField(
                  cursorColor: Color(0xff181B19),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(0),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xff181B19),
                      ),
                      hintText: 'Search Store',
                      border: OutlineInputBorder(borderSide: BorderSide.none)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 25),
                width: double.infinity,
                height: 115,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/banner.png'),
                        fit: BoxFit.cover)),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    groceries(
                        'images/pngfuel 11.png', 'Diet Coke', '355ml', 'Rp199'),
                    groceries(
                        'images/pngfuel 12.png', 'Sprite', '325ml', 'Rp210')
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    groceries(
                        'images/cocacola.png', 'CocaCola', '325ml', 'Rp200'),
                    groceries('images/pepsi.png', 'Pepsi', '305ml', 'Rp180'),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    groceries('images/orangeJuice.png', 'Orange Juice', '2L',
                        'Rp560'),
                    groceries(
                        'images/appleJuice.png', 'Apple Juice', '2L', 'Rp560'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget groceries(String image, String name, String detail, String price) {
  return Container(
    width: 160,
    height: 240,
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(10)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          name,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        Text(detail),
        SizedBox(
          height: 15,
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                child: Text(
                  price,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: 46,
                height: 46,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(17)),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
