// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:me_ui/customListTile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
      body: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          width: double.infinity,
          color: Colors.red.shade800,
        ),
        ListView(
          physics: ScrollPhysics(),
          scrollDirection: Axis.vertical,
          shrinkWrap: false,
          children: [
            Gap(60),
            SizedBox(
              height: 150,
              width: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.scaleDown,
                        image: NetworkImage(
                            'https://i.pinimg.com/originals/26/aa/3d/26aa3d567d4f7841335a57b69f9cc78f.jpg'))),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Gap(10),
                Text('Rafael Sanzio',
                    style:
                        GoogleFonts.aBeeZee(color: Colors.white, fontSize: 30)),
                Text('Mutant Turtle',
                    style: GoogleFonts.aBeeZee(
                        color: Colors.grey.shade300,
                        fontSize: 15) //TextStyle(fontSize: 15),
                    )
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              margin: EdgeInsets.symmetric(vertical: 50),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(50))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 15, left: 15),
                      child: Text(
                        'Friends',
                        style: GoogleFonts.aBeeZee(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )),
                  Gap(3),
                  CustomListTile(
                    imageUrl:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSiAULoluJblt1NpFhjDtC4wFjGMQC6UJQZg&s',
                    title: 'Michelangelo Simoni',
                    subTitle: 'Whats up, bro.',
                    time: 'NOW',
                  ),
                  Gap(3),
                  CustomListTile(
                    imageUrl:
                        'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEguqQFFSi_fJmITuIwN2ZBb1WMr8rRRQzS_4BXuk1ns7_ZUULQ1qCm-xMfgN4CvqJVtZl944yO8yT4LIiUmMIWYbcbtw2IO9ABEplvNWn8l9zbkuyY-aBcP0MsNqmalLrCGFMDG9ruzj4g/s1600/leo2003.jpg',
                    title: 'Leonardo da Vinci',
                    subTitle: 'Where are you? Master Splinter are...',
                    time: 'NOW',
                  ),
                  Gap(3),
                  CustomListTile(
                    imageUrl:
                        'https://static.wikia.nocookie.net/heroes-and-villain/images/d/d5/Donatello_TMNT_2003.png/revision/latest?cb=20230731222521',
                    title: 'Donato di Niccoló',
                    subTitle: 'You should use more your brain...',
                    time: 'NOW',
                  ),
                  Gap(3),
                  Gap(3),
                  CustomListTile(
                    imageUrl:
                        'https://upload.wikimedia.org/wikipedia/pt/b/b5/Splinter_screen.jpg',
                    title: 'Splinter Dad',
                    subTitle: 'WHERE ARE YOU???? I AM...',
                    time: '5:02 AM',
                  ),
                  Gap(3),
                  Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text(
                        'Groups',
                        style: GoogleFonts.aBeeZee(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )),
                  CustomListTile(
                    imageUrl:
                        'https://montinkantigo.s3.amazonaws.com/data/camisas/tartaruga-ninja-5a2e3817df2e0-estampa-298.png',
                    title: '🍕 Cowabunga 🍕',
                    subTitle: 'Spinter Dad: God blesses you, my children.',
                    time: '1:06 PM',
                  ),
                ],
              ),
            )
          ],
        ),
      ]),
    );
  }
}
