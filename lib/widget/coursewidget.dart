import 'package:flutter/material.dart';
import 'package:flutter_application_2/widget/description_section.dart';
import 'package:flutter_application_2/widget/videos_section.dart';

class CourseWidget extends StatefulWidget {
  final String img;
  CourseWidget(this.img);
  @override
  State<CourseWidget> createState() => _CourseWidgetState();
}

bool isselectVideo = true;

class _CourseWidgetState extends State<CourseWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.img),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                color: Color(0xFFF5F3FF),
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(
                    'images/${widget.img}.png',
                  ),
                ),
              ),
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F3FF),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.play_arrow_rounded,
                    size: 45,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              '${widget.img} Complete Course',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "create by junoir programmer sophat",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "55 videos",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Material(
                    color: isselectVideo
                        ? Colors.blue
                        : Colors.blue.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(30),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isselectVideo = true;
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                        child: Text(
                          'Videos',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFF5F3FF),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Material(
                    color: isselectVideo
                        ? Colors.blue.withOpacity(0.6)
                        : Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isselectVideo = false;
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                        child: Text(
                          'Description',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFF5F3FF),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            isselectVideo ? VideosSection() : DescriptionWidget(),
          ],
        ),
      ),
    );
  }
}
