import 'package:carline/presentation/widgets/brand.dart';
import 'package:carline/presentation/widgets/button.dart';
import 'package:carline/presentation/widgets/features_item.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  _FilterPageState createState() => _FilterPageState();
}

final List<String> filterTexts = [
  'Navigation',
  'Climate Control',
  'Air Condition',
  'Ventilated Seat'
];

final List<Map<String, dynamic>> brandData = [
  {'carName': 'Toyota', 'carBrand': 'asset/icons/toyata.png'},
  {'carName': 'Land Rover', 'carBrand': 'asset/icons/landrover.png'},
  {'carName': 'Tesla', 'carBrand': 'asset/icons/tesla.png'},
  {'carName': 'BMW', 'carBrand': 'asset/icons/bmw.png'},
  {'carName': 'Ferrari', 'carBrand': 'asset/icons/ferrari.png'},
];

class _FilterPageState extends State<FilterPage> {
  bool isSwitched = false;
  RangeValues values = const RangeValues(10000, 100000);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 0, 47),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Cancel',
                      style: GoogleFonts.urbanist(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(width: 90),
                  Center(
                    child: Text(
                      'Filter',
                      style: GoogleFonts.urbanist(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.grey[200]),
                        child: Row(
                          children: [
                            Icon(Icons.car_rental),
                            SizedBox(width: 20),
                            Text(
                              'Free Test Drive',
                              style: GoogleFonts.urbanist(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Switch(
                              value: isSwitched,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched = value;
                                });
                              },
                              activeColor:
                                  Theme.of(context).colorScheme.primary,
                              inactiveThumbColor: Colors.grey,
                              inactiveTrackColor: Colors.grey[300],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Brand Car',
                            style: GoogleFonts.urbanist(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'More Brand',
                            style: GoogleFonts.urbanist(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey[500]
                            )
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: brandData.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Brand(
                              imagePath: brandData[index]['carBrand'],
                              name: brandData[index]['carName'],
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Price Range',
                        style: GoogleFonts.urbanist(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                   Container(
  height: 100,
  child: Column(
    children: [
      RangeSlider(
        values: values,
        min: 10000, // Set this to the minimum value of your range
        max: 100000, // Set this to the maximum value of your range
        divisions: 50, // Adjust based on your desired number of steps
        labels: RangeLabels(
          '\$${values.start.round().toString()}',
          '\$${values.end.round().toString()}',
        ),
        onChanged: (newValues) {
          setState(() {
            values = newValues;
          });
        },
      ),
      SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 100,
            height: 35,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(12)
            ),
            child: Center(
              child: Text(
                '  \$${values.start.round().toString()}',
                style: GoogleFonts.urbanist(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
           Text(
            ' - ',
            style: GoogleFonts.urbanist(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
           Container(
             width: 100,
            height: 35,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(12)
            ),
             child: Text(
              
              ' \$${values.end.round().toString()}',
              style: GoogleFonts.urbanist(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
                       ),
           ),
        ],
      ),
    ],
  ),
)
                    ,
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Features',
                            style: GoogleFonts.urbanist(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('More features',style: GoogleFonts.urbanist(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey[500]
                            ),)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: filterTexts.length,
                        itemBuilder: (context, index) {
                          return FeaturesItem(text: filterTexts[index]);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Center(
                child: Button(
                  name: 'Apply Filter',
                  dothis: () {},
                  color: Theme.of(context).colorScheme.primary,
                  textColor: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
