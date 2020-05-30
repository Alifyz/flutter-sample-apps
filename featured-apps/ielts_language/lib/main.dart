import 'package:flutter/material.dart';
import 'package:ielts_language/styles/color_styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IELTS Language App',
      home: Scaffold(
        body: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    color: ColorStyles.primaryColor,
                    borderRadius: BorderRadius.circular(16)),
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 64,
                        left: 16,
                        right: 16,
                      ),
                      child: HeaderNavigationActions(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CourseTitle(),
                            CourseDescription(),
                            Row(
                              children: [
                                CourseDetails(),
                                CourseDetails(),
                              ],
                            )
                          ],
                        ),
                        Expanded(child: StudentWidget())
                      ],
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class CourseDescription extends StatelessWidget {
  const CourseDescription({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        'Lorem Ipsum is simply\ndummy text of the.',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class CourseTitle extends StatelessWidget {
  const CourseTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        'Advanced \nListing',
        style: TextStyle(
            color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class CourseDetails extends StatelessWidget {
  const CourseDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
                color: Colors.white10, borderRadius: BorderRadius.circular(8)),
            child: Icon(
              Icons.supervised_user_circle,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '7056',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Students',
                    style: TextStyle(
                      color: Colors.white,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HeaderNavigationActions extends StatelessWidget {
  const HeaderNavigationActions({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.white12, borderRadius: BorderRadius.circular(8)),
          child: Icon(
            Icons.arrow_left,
            color: Colors.white,
            size: 48,
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white12, borderRadius: BorderRadius.circular(8)),
          child: Icon(
            Icons.add_alert,
            color: Colors.white,
            size: 48,
          ),
        )
      ],
    );
  }
}

class StudentWidget extends StatelessWidget {
  const StudentWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(right: 32),
        child: Align(
          alignment: Alignment.bottomRight,
          child: Image.asset('assets/student.png'),
        ),
      ),
    );
  }
}
