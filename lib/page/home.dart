import 'package:flutter/material.dart';
import 'package:flutter_application_2/widget/coursewidget.dart';

class Home_Page extends StatelessWidget {
  Home_Page({super.key});
  final List cartNames = [
    'Catageries',
    'Classes',
    'Free Course',
    'Books Store',
    'Live Course',
    'Leading Bord',
  ];

  final imgList = [
    "C#",
    "flutter",
    "python",
    "React",
  ];

  final List<Color> cartColor = [
    Color(0xFFFFCF2F),
    Color(0xFF6FE02F),
    Color(0xFF61DBFD),
    Color(0xFFCB84FB),
    Color(0xFFFFCF2F),
    Color(0xFFFC7C7F),
  ];

  final List<Icon> cartIcon = [
    Icon(
      Icons.category,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      Icons.video_library,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      Icons.assignment,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      Icons.store,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      Icons.play_circle_fill,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      Icons.emoji_events,
      color: Colors.white,
      size: 30,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.dashboard,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 3,
                    bottom: 15,
                  ),
                  child: Text(
                    'Hi programmer',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      letterSpacing: 1,
                      wordSpacing: 2,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top: 5, bottom: 20),
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search here...',
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 15,
              right: 15,
            ),
            child: Column(
              children: [
                GridView.builder(
                  itemCount: cartNames.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.1,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: cartColor[index],
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: cartIcon[index],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          cartNames[index],
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(
                              0.7,
                            ),
                          ),
                        )
                      ],
                    );
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Course',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF674AEF),
                      ),
                    )
                  ],
                ),
                GridView.builder(
                  itemCount: imgList.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio:
                        (MediaQuery.of(context).size.height - 50 - 25) /
                            (4 * 240),
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return CourseWidget(
                                imgList[index],
                              );
                            },
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFF5F3FF),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Image.asset(
                                'images/${imgList[index]}.png',
                                height: 100,
                                width: 100,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              imgList[index],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '55 Videos',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
