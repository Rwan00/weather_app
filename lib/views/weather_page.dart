import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/search_field.dart';
import '../widgets/weather_item.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(46, 51, 90, 1),
            Color.fromRGBO(28, 27, 51, 1)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(children: [
        const SizedBox(
          height: 38,
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back,
                size: 24,
                color: Color.fromRGBO(235, 235, 245, 0.6),
              ),
            ),
            Text(
              "Weather",
              style: GoogleFonts.aBeeZee(
                  fontSize: 32,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ],
        ),
        SearchField(
          hint: 'Search for a city or airport',
          validator: (String? k) {},
          widget: const Icon(
            Icons.search,
            color: Color.fromRGBO(235, 235, 245, 0.6),
          ),
        ),
        const SizedBox(height: 32,),
        const Padding(
          padding: EdgeInsets.only(left:32.0),
          child: WeatherItem(),
        )
      ]),
    ));
  }
}
