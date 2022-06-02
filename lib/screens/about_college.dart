import 'package:flutter/material.dart';

class AboutCollege extends StatefulWidget {
  const AboutCollege({Key? key}) : super(key: key);

  @override
  State<AboutCollege> createState() => _AboutCollegeState();
}

class _AboutCollegeState extends State<AboutCollege> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Description",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 6),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.",
                style: TextStyle(color: Colors.black45, fontSize: 10.5),
              ),
              SizedBox(height: 20),
              Text(
                "Location",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 6),
              Container(
                child: Image.asset(
                  'assets/images/map.png',
                  fit: BoxFit.cover,
                  height: 170, // set your height
                  width: MediaQuery.of(context).size.width, // and width here
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Student Review",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Image.asset(
                      'assets/images/student1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      'assets/images/student2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      'assets/images/student3.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      'assets/images/student3.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      'assets/images/student4.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      'assets/images/student5.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Card(
                  elevation: 10, // Change this
                  shadowColor: Colors.black38, // Change this
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Arun sai",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.5,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla sit magna suscipit tellus malesuada in facilisis a.",
                          style: TextStyle(color: Colors.black45, fontSize: 10),
                        ),
                      ],
                    ),
                  )),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
