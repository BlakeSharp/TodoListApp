import 'package:flutter/material.dart';
import 'package:todo_list_app/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Scaffold is what (every?) app is based on
    return Scaffold(
      backgroundColor: tdBGColor, // Change the whole screen to BGcolor
      // the top of the app
      appBar: _buildAppBar(),

      // The main section of the app
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0),
                    prefixIcon: Icon(Icons.search, color: tdBlack, size: 20),
                    prefixIconConstraints:
                        BoxConstraints(maxHeight: 20, minWidth: 25),
                    border: InputBorder.none,
                    hintText: 'Search',
                    hintStyle: TextStyle(color: tdGrey)),
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    // Seperating the AppBar to a method for readability
    return AppBar(
      //bg color of the top portion
      backgroundColor: tdBGColor,

      //gets rid of the dropshadow (like z index?)
      elevation: 0,
      title:
          // Avatar and menu item
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Icon(
          Icons.menu,
          color: tdBlack,
          size: 30,
        ),
        Container(
          height: 40,
          width: 40,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset('assets/images/avatar.jpg'),
          ),
        )
      ]),
    );
  }
}
