import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:skygoal_flutter_task/screens/college_details.dart';

import '../models/colleges.dart';
import '../widgets/search_testfield.dart';

class CollegesList extends StatefulWidget {
  const CollegesList({Key? key}) : super(key: key);

  @override
  _CollegesListState createState() => _CollegesListState();
}

class _CollegesListState extends State<CollegesList> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Column(
          children: const [
            AppBar(),
            Body(),
          ],
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        itemBuilder: (context, index) {
          return CollegesCard(
            colleges: collegesList[index],
          );
        },
        itemCount: collegesList.length,
      ),
    );
  }
}

class CollegesCard extends StatelessWidget {
  final Colleges colleges;

  const CollegesCard({
    Key? key,
    required this.colleges,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const CollegeDetails(),
          ),
        ),
        child: Container(
          // padding: const EdgeInsets.fromLTRB(18, 15, 18, 12),

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.1),
                blurRadius: 4.0,
                spreadRadius: .05,
              ), //BoxShadow
            ],
            // image: DecorationImage(
            //   image: AssetImage(colleges.thumbnail),
            //   fit: BoxFit.cover,
            // ),
          ),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage(colleges.thumbnail),
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      colleges.name,
                      style: const TextStyle(color: Colors.black, fontSize: 15),
                    ),
                    // ignore: deprecated_member_use
                    SizedBox(
                      height: 20,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.star, size: 15),
                        label: const Text("4.3"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          textStyle: const TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      colleges.discription,
                      style: const TextStyle(color: Colors.black, fontSize: 10),
                    ),
                    // ignore: deprecated_member_use
                    ButtonTheme(
                      minWidth: 12.0,
                      height: 20.0,
                      child: FlatButton(
                        color: Colors.blueAccent,
                        textColor: Colors.white,
                        onPressed: () {},
                        child: const Text(
                          'Apply Now',
                          style: TextStyle(fontSize: 10.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Divider(color: Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Image(image: AssetImage("assets/images/like 1.png")),
                    const Text(
                      "More than 1000+ students have been placed",
                      style: TextStyle(color: Colors.black, fontSize: 8),
                    ),
                    // ignore: deprecated_member_use
                    Row(
                      children: [
                        Icon(
                          Icons.remove_red_eye,
                          color: Colors.black38,
                        ),
                        ButtonTheme(
                          minWidth: 12.0,
                          height: 20.0,
                          child: FlatButton(
                            // color: Colors.blueAccent,
                            textColor: Colors.black38,
                            onPressed: () {},
                            child: const Text(
                              '468+',
                              style: TextStyle(fontSize: 10.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      height: 170,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.1, 0.5],
          colors: [
            Color(0xff886ff2),
            Color(0xff6849ef),
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          const SearchTextField()
        ],
      ),
    );
  }
}
