import 'package:flutter/material.dart';
import 'package:hotel_explore/details_screen.dart';
import 'package:hotel_explore/hotelcard.dart';
import 'package:hotel_explore/sectiontitle.dart';

class HotelExploreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HotelExplorePage(),
    );
  }
}

class HotelExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        title: Text(
          "Hotels",
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () {},
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search Hotel here...",
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.tune),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          SectionTitle(title: "All Hotels & Resorts"),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
            child: HotelCard(
              imageUrl:
                  "https://media.istockphoto.com/id/146765403/photo/a-luxurious-florida-beach-hotel-during-sunrise.jpg?s=612x612&w=0&k=20&c=pxw9Q78KbvqV6_pS_C-v_m6S_WQjKWLBSdqgRtqMUUg=",
              hotelName: "Amaazia Resort",
              location: "Surat, Gujarat",
              price: "₹ 8,066",
              rating: 4.5,
              reviews: 289,
            ),
          ),
          HotelCard(
            imageUrl:
                "https://media.istockphoto.com/id/146765403/photo/a-luxurious-florida-beach-hotel-during-sunrise.jpg?s=612x612&w=0&k=20&c=pxw9Q78KbvqV6_pS_C-v_m6S_WQjKWLBSdqgRtqMUUg=",
            hotelName: "Hotel Holiston",
            location: "Dwarka, Gujarat",
            price: "₹ 8,066",
            rating: 4.2,
            reviews: 222,
          ),
          HotelCard(
            imageUrl:
                "https://media.istockphoto.com/id/146765403/photo/a-luxurious-florida-beach-hotel-during-sunrise.jpg?s=612x612&w=0&k=20&c=pxw9Q78KbvqV6_pS_C-v_m6S_WQjKWLBSdqgRtqMUUg=",
            hotelName: "Day Dream Resort",
            location: "Dabolim, Goa",
            price: "₹ 11,066",
            rating: 4.8,
            reviews: 345,
          ),
        ],
      ),
    );
  }
}
