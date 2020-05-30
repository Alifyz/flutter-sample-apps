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
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Advanced \nListing',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Lorem Ipsum is simply\ndummy text of the.',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 36,
                                height: 36,
                                color: Colors.white10,
                              ),
                            )
                          ],
                        ),
                        StudentWidget()
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
              color: Colors.white12,
              borderRadius: BorderRadius.circular(8)),
          child: Icon(
            Icons.arrow_left,
            color: Colors.white,
            size: 48,
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white12,
              borderRadius: BorderRadius.circular(8)),
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
