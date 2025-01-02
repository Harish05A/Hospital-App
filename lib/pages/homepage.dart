import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Categories",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              ListView.separated(
                  itemBuilder: (context, index) {},
                  separatorBuilder: (context, index) {},
                  itemCount: itemCount)
            ],
          )
        ],
      ),
    );
  }

  Container header() {
    return Container(
      color: Colors.lightBlue,
      height: 280,
      width: double.infinity,
      padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hi Edi!",
                style: TextStyle(
                  fontFamily: "Poppins",
                  color: Colors.white,
                ),
              ),
              Container(
                height: 40,
                width: 40,
                child: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(89, 255, 255, 255),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Let's find \nyour top doctor!",
            style: TextStyle(
              fontFamily: "Poppins",
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              hintText: "Search for doctors",
              hintStyle: TextStyle(
                fontFamily: "Poppins",
                color: const Color.fromARGB(255, 149, 149, 149),
                fontWeight: FontWeight.w400,
              ),
              prefixIcon: Icon(
                Icons.search,
                color: const Color.fromARGB(255, 149, 149, 149),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
