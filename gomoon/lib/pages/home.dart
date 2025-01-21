import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  late double deviceHeight, deviceWidth;

  Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(child: Container(
        height: deviceHeight,
        width: deviceWidth,
        padding: EdgeInsets.symmetric(horizontal: deviceWidth * .05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            pageTitle(),
            dropDown()
          ],
        ),
      ),),
    );
  }

Widget pageTitle() {
  return Container(
    child: Text("#GoMoon", 
    style: 
      TextStyle(
        color: Colors.white,
        fontSize: 70,
        fontWeight: FontWeight.w800
      )
    ,
    ),
  );
}

Widget moonImage() {
  return Scaffold(
    body: Container(
      decoration: const BoxDecoration(
          color: Color.fromARGB(50, 26, 26, 29),
          image: DecorationImage(
            fit: BoxFit.contain,
            image: AssetImage("assets/images/moon.png"),
          )),
    ),
  );
}

Widget dropDown(){
    List<DropdownMenuItem<String>> itemslist = ['item 1' , 'item 2' , 'item 3' ].map(
      (e){ 
        return DropdownMenuItem(
          child: Text(e), 
          value: (e),
          );
    }).toList();
    return Container(child: DropdownButton(items:  itemslist, onChanged: (_){},));
  }
}

