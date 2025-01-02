import 'package:flutter/material.dart';
import 'package:hotel_explore/Amenties.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({super.key});

  final List<Map<String, dynamic>> amenities = [
    {'icon': Icons.tv, 'label': 'Television'},
    {'icon': Icons.wifi, 'label': 'Wifi'},
    {'icon': Icons.ac_unit, 'label': 'AC'},
    {'icon': Icons.phone, 'label': 'Telephone'},
    {'icon': Icons.dry_rounded, 'label': 'Hair drier'},
    {'icon': Icons.more_horiz, 'label': 'More Things'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Icon(
                        Icons.bed_outlined,
                        color: Colors.teal,
                        size: 25,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "King Sized Bed",
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontFamily: 'Regular'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.person,
                        color: Colors.teal,
                        size: 25,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Max : 4 Guest / room",
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontFamily: 'Regular'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.car_crash,
                        color: Colors.teal,
                        size: 25,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Parking Area",
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontFamily: 'Regular'),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Amazia Resort",
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Regular',
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.teal,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Surat , Gujarat",
                              style: TextStyle(fontFamily: 'Regular'),
                            )
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "4.3",
                              style: TextStyle(fontFamily: 'Regular'),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Overview",
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Regular',
                      fontWeight: FontWeight.bold),
                ),
                RichText(
                  text: TextSpan(
                    text:
                        "This apartment will be a grat stay for every age groups has everything inside what you'll need. It's Just not apartament",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontFamily: 'Regular'),
                    children: [
                      TextSpan(
                        text: "..Read More",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.teal,
                            fontFamily: 'Regular'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Room Details",
                  style: TextStyle(
                      fontFamily: 'Regular',
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    "https://media.istockphoto.com/id/146765403/photo/a-luxurious-florida-beach-hotel-during-sunrise.jpg?s=612x612&w=0&k=20&c=pxw9Q78KbvqV6_pS_C-v_m6S_WQjKWLBSdqgRtqMUUg=",
                    height: 220,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Delux room",
                          style: TextStyle(
                              fontFamily: 'Regular',
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Text(
                          "₹ 8,066",
                          style: TextStyle(
                              fontFamily: 'Regular',
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Per Night",
                          style: TextStyle(
                              fontFamily: 'Regular',
                              fontWeight: FontWeight.w200,
                              fontSize: 10),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "  * 24 hour Room service\n  * Free Wi-Fi\n  * Bathroom \n  * 24-hour HouseKepping \n  * Air Conditioning\n  * Mineral Water",
                      style: TextStyle(fontFamily: 'Regular', fontSize: 12),
                    ),
                    Spacer(),
                    Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.teal),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: Center(
                        child: Text(
                          "Select Room",
                          style: TextStyle(
                              fontFamily: 'Regular',
                              fontWeight: FontWeight.bold,
                              color: Colors.teal),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 400,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.teal),
                  child: Center(
                    child: Text(
                      "Book Room",
                      style: TextStyle(
                          fontFamily: 'Regular',
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Amenities",
                  style: TextStyle(
                      fontFamily: 'Regular',
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                // Expanded(
                //   child: GridView.builder(
                //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //       crossAxisCount: 3,
                //     ),
                //     itemCount: amenities.length,
                //     itemBuilder: (context, index) {
                //       return AmenitiesTile(
                //         icon: amenities[index]['icon'],
                //         label: amenities[index]['label'],
                //       );
                //     },
                //   ),
                // ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        height: 2,
                        color: Colors.greenAccent,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: RichText(
                        text: TextSpan(
                          text: "Hotel ",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontFamily: 'Regular'),
                          children: [
                            TextSpan(
                              text: "Location             ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.teal,
                                  fontSize: 25,
                                  fontFamily: 'Regular'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    "https://imgs.search.brave.com/4f8gNEGpyjaz1qfCq1hfBJLPADLAcmE5YhUxvSM43gw/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tYXBz/Lmdvb2dsZWFwaXMu/Y29tL21hcHMvYXBp/L3N0YXRpY21hcD9j/ZW50ZXI9NDAuNzE0/NzI4LC03My45OTg2/NzImem9vbT0xMiZt/YXB0eXBlPXRlcnJh/aW4mc2l6ZT00MDB4/NDAwJmtleT1BSXph/U3lBM2tnN1lXdWdH/bDFsVFhtQW1hQkdQ/TmhEVzlwRWg1Ym8m/c2lnbmF0dXJlPTRi/UGhFYWJLanRST0Vp/TGNnWVh1SktLTTVX/Yz0",
                    height: 220,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        height: 2,
                        color: Colors.greenAccent,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: RichText(
                        text: TextSpan(
                          text: "Property ",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontFamily: 'Regular'),
                          children: [
                            TextSpan(
                              text: "Policy             ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.teal,
                                  fontSize: 25,
                                  fontFamily: 'Regular'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  "Children and Extras beds",
                  style: TextStyle(
                      fontFamily: 'Regular', fontWeight: FontWeight.w600),
                ),
                Text(
                  "Extra beds dependent on you choose.Please check the individual room capacity for more details",
                  style: TextStyle(
                    fontFamily: 'Regular',
                    fontWeight: FontWeight.w100,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 400,
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.teal),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    // Wrap Column with Center
                    child: Column(
                      mainAxisAlignment:
                          MainAxisAlignment.center, // Center vertically
                      children: [
                        Text(
                          "Infant 0-2 year",
                          style: TextStyle(fontFamily: 'Regular'),
                        ),
                        Divider(),
                        Text(
                          "Stay for free if using existing bedding.",
                          style: TextStyle(
                              fontFamily: 'Regular',
                              fontWeight: FontWeight.w100),
                        )
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 400,
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.teal),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    // Wrap Column with Center
                    child: Column(
                      mainAxisAlignment:
                          MainAxisAlignment.center, // Center vertically
                      children: [
                        Text(
                          "Childer 3-11 years",
                          style: TextStyle(fontFamily: 'Regular'),
                        ),
                        Divider(),
                        Text(
                          "Must use extra bed.",
                          style: TextStyle(
                              fontFamily: 'Regular',
                              fontWeight: FontWeight.w100),
                        )
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 400,
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.teal),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment:
                          MainAxisAlignment.center, // Center vertically
                      children: [
                        Text(
                          "Adults 12 & above",
                          style: TextStyle(fontFamily: 'Regular'),
                        ),
                        Divider(),
                        Text(
                          "Must use extra bed.",
                          style: TextStyle(
                              fontFamily: 'Regular',
                              fontWeight: FontWeight.w100),
                        )
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                Text(
                  "Others",
                  style: TextStyle(
                      fontFamily: 'Regular', fontWeight: FontWeight.w100),
                ),
                Text(
                  " * The property does not to permit food from outside",
                  style: TextStyle(
                      fontFamily: 'Regular', fontWeight: FontWeight.w100),
                ),
                Text(
                  " * When your booking more than 5 rooms,different \n    policies and additional suppleyments apply",
                  style: TextStyle(
                      fontFamily: 'Regular', fontWeight: FontWeight.w100),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
