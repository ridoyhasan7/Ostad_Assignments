
import 'package:flutter/material.dart';
final List<Map<String, String>> countries = [
  {
    'image' : 'https://flagcdn.com/w160/bd.png',
    'country': 'Bangladesh',
    'title': 'Asia',
    'details' : 'A Country Of Asia'
  },
  {
    'image': 'https://flagcdn.com/w160/us.png',
    'country': 'USA',
    'title': 'Americas',
    'details' : 'A Country Of Americas'
  },
  {
    'image': 'https://flagcdn.com/w160/it.png',
    'country': 'Italy',
    'title': 'Europe',
    'details' : 'A Country Of Europe'

  },
  {
    'image': 'https://flagcdn.com/w160/gb.png',
    'country': 'UK',
    'title': 'Europe',
    'details' : 'A Country Of Europe'
  },
  {
    'image' : 'https://flagcdn.com/w160/de.png',
    'country': 'Germany',
    'title': 'Europe',
    'details' : 'A Country Of Europe'
  },
  {
    'image': 'https://flagcdn.com/w160/jp.png',
    'country': 'Japan',
    'title': 'Asia',
    'details' : 'A Country Of Asia'
  },
  {
    'image': 'https://flagcdn.com/w160/ca.png',
    'country': 'Canada',
    'title': 'Americans',
    'details' : 'A Country Of Americas'
  },
  {
    'image': 'https://flagcdn.com/w160/fr.png',
    'country': 'France',
    'title': 'Europe',
    'details' : 'A Country Of Europe'
  },
];


class FlagCard extends StatelessWidget {
  final String image;
  final String country;
  final String title;
  final String details ;

  const FlagCard({
    Key? key,
    required this.image,
    required this.country,
    required this.title,
    required this.details
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(10),
        shape: BoxShape.rectangle
      ),
      

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Image.network(
                image
              ),

              Positioned(
                bottom: 5,
                left: 5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(3),
                  margin: EdgeInsets.all(3),
                  child: Text(title , style: TextStyle(
                    fontWeight: FontWeight.bold 
                  ),),
                ),
                
                )
            ],
          ),

          Text(country, style: TextStyle(
            fontWeight: FontWeight.bold)),
         
          Text( details, textAlign: TextAlign.center),
          ElevatedButton(onPressed: (){}, child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Text('See More'),
              Icon(Icons.arrow_right_alt)
            ],
          ))
        ],
      ),
    );
  }
}
