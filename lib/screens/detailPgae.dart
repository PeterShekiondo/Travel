import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel/misc/colors.dart';
import 'package:travel/widgets/appText.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        // stack widget must have width and height
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit:BoxFit.cover,
                          image: AssetImage("images/mountain.jpeg")
                      )
                  ),
                )
            ),
            Positioned(
              left: 20,
              top: 50,
              child: Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.menu),
                  color: Colors.white,
                  )
                ],
              ),
            ),
            Positioned(
              top: 330,
              child: Container(
                padding: const EdgeInsets.only(top: 35, left:20, right: 20),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35)
                  )
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(text:"Yosemite", size: 25, weight: FontWeight.bold, color: Colors.black.withOpacity(.8)),
                        AppText(text:"\$ 250", size: 25, weight: FontWeight.bold, color: AppColors.mainColor),
                      ],
                    )
                  ],
                ),
              )
            ),
          ],
        ),
      )
    );
  }
}
