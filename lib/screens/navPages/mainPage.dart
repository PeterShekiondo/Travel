import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel/misc/colors.dart';
import 'package:travel/widgets/appText.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Menu row
          Container(
            padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu, size: 30, color: Colors.black45),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(.5)),
                )
              ],
            ),
          ),
          SizedBox(height: 30),
          // Discover text
          Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: AppText(
                text: 'Discover',
                size: 25,
                color: AppColors.bigTextColor,
                weight: FontWeight.bold,
              )),
          SizedBox(height: 25),
          // Tab bar
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                isScrollable: true,
                labelPadding: const EdgeInsets.only(left: 20, right: 20),
                indicatorSize: TabBarIndicatorSize.label,
                indicator:
                    CircleTabIndicator(color: AppColors.mainColor, radius: 4),
                tabs: [
                  Container(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        "Places",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      )),
                  Container(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        "Inspiration",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      )),
                  Container(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        "Emotion",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      )),
                ],
              ),
            ),
          ),
          Container(
            height: 300,
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  padding: const EdgeInsets.only(left: 20, top: 5),
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 20, top: 15),
                      width: 200,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("images/mountain.jpeg"),
                          )),
                    );
                  },
                ),
                Text("welcome"),
                Text("bye")
              ],
            ),
          ),
          SizedBox(height: 25),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  text: 'Explore more',
                  size: 18,
                  color: AppColors.bigTextColor,
                  weight: FontWeight.bold,
                ),
                AppText(
                  text: 'See all',
                  size: 18,
                  color: AppColors.textColor1,
                  weight: FontWeight.bold,
                )
              ],
            ),
          ),
          SizedBox(height: 25),
          Container(
            height:120,
            width: double.maxFinite,
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("images/mountain.jpeg"),
                              )),
                        ),
                        SizedBox(height: 10),
                        Container(
                          child: AppText(
                            text: "Kayaking",
                            size: 14,
                          )
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;

  CircleTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;

  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);
    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
