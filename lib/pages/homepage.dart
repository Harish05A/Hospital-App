import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hospital_app/models/category.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<CategoryModel> categories = CategoryModel.getCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [header(), categorysection()],
      ),
    );
  }

  Column categorysection() {
    return Column(
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
        SizedBox(
          height: 50,
          child: ListView.separated(
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  for (int i = 0; i < categories.length; i++) {
                    categories[i].isselected = false;
                  }
                  categories[index].isselected = true;
                  setState(() {});
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 20),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: categories[index].isselected
                            ? const Color.fromARGB(116, 49, 143, 251)
                            : const Color.fromARGB(42, 0, 0, 0),
                        spreadRadius: 1.5,
                        blurRadius: 2,
                        offset: Offset(0, 3),
                      ),
                    ],
                    color: categories[index].isselected
                        ? Colors.lightBlue
                        : Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      categories[index].vector,
                      fit: BoxFit.none,
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(
              width: 20,
            ),
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(89, 255, 255, 255),
                ),
                child: Icon(
                  Icons.notifications,
                  color: Colors.white,
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
