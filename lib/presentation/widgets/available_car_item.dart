import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AvailableCarItem extends StatelessWidget {
  final String carname;
  final String carCompanylogo;
  final String carImage;
  final String price;
  const AvailableCarItem({super.key,required this.carCompanylogo,required this.carImage,required this.carname,required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 200,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // Align the entire column at the top
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align the row at the top
                children: [
                  Image.network(
                    carImage,
                    width: 125,
                    height: 125,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Align the text at the top
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        carname,
                        style: GoogleFonts.urbanist(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.network(
                            carCompanylogo,
                            height: 18,
                            width: 40,
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Text('5.0')
                            ],
                          )
                        ],
                      ),

                      // Add other details as needed
                    ],
                  ),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('asset/icons/engine.png'),
                      SizedBox(width: 5),
                      Text(
                        '540 hp',
                        style: GoogleFonts.urbanist(
                            color: Colors.grey, fontSize: 14),
                      ),
                      SizedBox(width: 10),
                      Image.asset(
                        'asset/icons/gear.png',
                        height: 25,
                        width: 25,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Automatic',
                        style: GoogleFonts.urbanist(
                            color: Colors.grey, fontSize: 14),
                      ),
                    ],
                  ),
                  Text(
                    price,
                    style: GoogleFonts.urbanist(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
