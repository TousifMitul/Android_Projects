import 'package:flutter/material.dart';
import 'destination.dart';
import 'trend.dart';

class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);
  final List<Map<String, dynamic>> topDestinations = [
    {
      "image":
      "https://www.royalcaribbean.com/media-assets/pmc/content/dam/shore-x/paris-le-havre-leh/lh17-paris-sightseeing-without-lunch/stock-photo-skyline-of-paris-with-eiffel-tower-at-sunset-in-paris-france-eiffel-tower-is-one-of-the-most-752725282.jpg?w=1920",
      "title": "Paris",
    },
    {
      "image":
      "https://www.sunsiyam.com/media/qnfnzgmq/ssiv_general_04.jpg?width=782&height=521&mode=max",
      "title": "Maldives",
    },
    {
      "image":
      "https://upload.wikimedia.org/wikipedia/commons/5/54/Dubai_skyscrapers_at_night_2011.jpg",
      "title": "Dubai",
    },
    {
      "image":
      "https://cdn.craft.cloud/101e4579-0e19-46b6-95c6-7eb27e4afc41/assets/uploads/pois/bali-frommers.jpg?width=1200&height=630&quality=82&fit=cover&s=wXBSCaADkvVfgdrxqYPXAX8MvnZntmrvZerKM1zmjm4",
      "title": "Bali",
    },
  ];

  final List<Map<String, dynamic>> trendingPackages = [
   {
   "package": "Romantic Paris Getaway",
   "image": "https://francetoday.com/wp-content/uploads/2022/03/N-86r037h-La-Suite-Shangri-La.jpg",
},
{
"package": "Bali Adventure Tour",
"price": 599,
"image": "https://i0.wp.com/inclusivebalitour.com/wp-content/uploads/2019/07/Ayung-Rafting-Adventure.jpg?resize=474%2C284&ssl=1",
},
{
"package name": "Nepal Tour",
"price": 599,
"image": "https://www.explore-vacation.com/uploads/slide/chandragiri-bhaleswor-mahadev-temple-298.jpeg",
},
{
"package name": "Maldive Tour",
"price": 599,
"image": "https://swastiktours.com/wp-content/uploads/2024/04/22.webp",
},
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.network(
                    'https://images.unsplash.com/photo-1679279354236-9ad388e4246b?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8ZXhwbG9yZSUyMHRoZSUyMHdvcmxkfGVufDB8fDB8fHww',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 150, left: 30),
                    child: Text(
                      'Explore the world',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 200,
                      left: 30,
                      right: 120,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search Destination...',
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 220),
                child: Text(
                  'Top Destinations',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 240,
                child: 
                GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                    childAspectRatio: 1.6,
                    mainAxisSpacing: 10,
                        crossAxisSpacing: 10),

                  physics: NeverScrollableScrollPhysics(),
                  itemCount: topDestinations.length,
                  itemBuilder: (context,index){
                      return Destination(
                        image: topDestinations[index]["image"],
                        title: topDestinations[index]["title"],
                      );
                  },
              ),
              ),
              Text("Trending Packages",
                style:
                TextStyle(
                fontWeight: FontWeight.bold,
                  fontSize: 20
              ),),
SizedBox(height: 10,),
              SizedBox(
                height: 400,
                width: double.infinity,
                child: Padding(padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ListView.separated(
                        itemCount: trendingPackages.length,
                        itemBuilder: (context, index) {
                          return Trend(
                            image: trendingPackages[index]["image"],
                            package:
                            trendingPackages[index]["package name"],
                            price: trendingPackages[index]["price"] ,
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 0);
                        }
                ),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
