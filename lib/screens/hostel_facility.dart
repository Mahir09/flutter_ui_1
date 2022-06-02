import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../constants/color.dart';
import '../models/colleges.dart';

class HostelFacility extends StatefulWidget {
  const HostelFacility({Key? key}) : super(key: key);

  @override
  State<HostelFacility> createState() => _HostelFacilityState();
}

class _HostelFacilityState extends State<HostelFacility> {
  List<bool> isSelected = [true, false, false, false];

  final List<String> imagesList = [
    'assets/images/slider1.png',
    'assets/images/slider2.png',
    'assets/images/slider1.png',
    'assets/images/slider2.png',
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Center(
                  child: ToggleButtons(
                    borderColor: kPrimaryColor,
                    fillColor: kPrimaryLight,
                    borderWidth: 2,
                    selectedBorderColor: kPrimaryLight,
                    selectedColor: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    isSelected: isSelected,
                    onPressed: (int index) {
                      setState(() {
                        for (int buttonIndex = 0;
                            buttonIndex < isSelected.length;
                            buttonIndex++) {
                          if (buttonIndex == index) {
                            isSelected[buttonIndex] = true;
                          } else {
                            isSelected[buttonIndex] = false;
                          }
                        }
                      });
                    },
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(Icons.bed_outlined),
                            SizedBox(width: 5),
                            Text('4'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(Icons.bed_outlined),
                            SizedBox(width: 5),
                            Text('3'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(Icons.bed_outlined),
                            SizedBox(width: 5),
                            Text('2'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(Icons.bed_outlined),
                            SizedBox(width: 5),
                            Text('1'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      onPageChanged: (index, reason) {
                        setState(
                          () {
                            _currentIndex = index;
                          },
                        );
                      },
                    ),
                    items: imagesList
                        .map(
                          (item) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              margin: const EdgeInsets.only(
                                top: 10.0,
                                bottom: 10.0,
                              ),
                              elevation: 6.0,
                              shadowColor: Colors.redAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: ClipRRect(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(30.0)),
                                child: Stack(
                                  children: <Widget>[
                                    Image.asset(
                                      item,
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imagesList.map((urlOfItem) {
                      int index = imagesList.indexOf(urlOfItem);
                      return Container(
                        width: 10.0,
                        height: 10.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentIndex == index
                              ? Color.fromRGBO(0, 0, 0, 0.8)
                              : const Color.fromRGBO(0, 0, 0, 0.3),
                        ),
                      );
                    }).toList(),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    collegesList[0].name,
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
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/location1.png',
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Lorem ipsum dolor sit amet, consectetur",
                    style: TextStyle(color: Colors.black45, fontSize: 12),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.",
                style: TextStyle(color: Colors.black45, fontSize: 10.5),
              ),
              SizedBox(height: 20),
              Text(
                "Facilities",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/university1.png',
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "College in 400mtrs",
                    style: TextStyle(color: Colors.black45, fontSize: 12),
                  ),
                ],
              ),
              SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/bath1.png',
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Bathrooms : 2",
                    style: TextStyle(color: Colors.black45, fontSize: 12),
                  ),
                ],
              ),
              SizedBox(height: 70),
            ],
          ),
        ),
      ),
    );
  }
}
