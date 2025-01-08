import 'package:flutter/material.dart';

class HotelCard extends StatelessWidget {
  final String imageUrl;
  final String hotelName;
  final String location;
  final String price;
  final double rating;
  final int reviews;

  HotelCard({
    required this.imageUrl,
    required this.hotelName,
    required this.location,
    required this.price,
    required this.rating,
    required this.reviews,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth; // Adapt width dynamically

        return Center(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 5,
            child: Container(
              width: width * 0.9, // Adjust width based on screen size
              padding: EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          imageUrl,
                          height: width * 0.4, // Adjust image height dynamically
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.teal,
                          ),
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    hotelName,
                    style: TextStyle(
                      fontSize: width * 0.045, // Responsive font size
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    location,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: width * 0.035, // Responsive font size
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    children: [
                      Row(
                        children: List.generate(5, (index) {
                          if (index < rating.floor()) {
                            return Icon(Icons.star,
                                color: Colors.amber, size: width * 0.04);
                          } else if (index < rating) {
                            return Icon(Icons.star_half,
                                color: Colors.amber, size: width * 0.04);
                          } else {
                            return Icon(Icons.star_border,
                                color: Colors.amber, size: width * 0.04);
                          }
                        }),
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        "($reviews Reviews)",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: width * 0.03, // Responsive font size
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        price,
                        style: TextStyle(
                          fontSize: width * 0.045, // Responsive font size
                          fontWeight: FontWeight.bold,
                          color: Colors.teal,
                        ),
                      ),
                      Text(
                        "Per Night",
                        style: TextStyle(
                          fontSize: width * 0.03, // Responsive font size
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
