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
  int activeStars = 3;
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
                padding: const EdgeInsets.only(top: 30, left:20, right: 20),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35 )
                  )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(text:"Yosemite", size: 25, weight: FontWeight.bold, color: Colors.black.withOpacity(.8)),
                        AppText(text:"\$ 250", size: 25, weight: FontWeight.bold, color: AppColors.mainColor),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.location_on, size: 16, color: AppColors.mainColor,),
                        SizedBox(width: 5,),
                        AppText(text: "Dar es salaam, Tanzania", size: 16, color: AppColors.textColor1,)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) => Icon(Icons.star, color:index<activeStars? AppColors.starColor:AppColors.textColor2, size: 18,)),
                        ),
                        SizedBox(width: 10,),
                        AppText(text: "4.0", color: AppColors.textColor2, size: 16,)
                      ],
                    ),
                    SizedBox(height: 25),
                    AppText(text: "People", size: 18, color: Colors.black.withOpacity(0.8), weight: FontWeight.bold,),
                    SizedBox(height: 5),
                    AppText(text: "Number of people in your group", size: 16, color: AppColors.mainTextColor,),

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
