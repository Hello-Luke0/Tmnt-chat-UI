import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomListTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;
  final String time;
  const CustomListTile(
      {super.key,
      this.imageUrl = '',
      this.title = '',
      this.subTitle = '',
      this.time = ''});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.fill,
            )),
      ),
      title: Text(
        title,
        style: GoogleFonts.aBeeZee(
            color: Colors.black.withOpacity(0.8),
            fontSize: 15,
            fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        subTitle,
        style: GoogleFonts.aBeeZee(fontWeight: FontWeight.normal),
      ),
      trailing: Text(
        time,
        style: GoogleFonts.aBeeZee(fontWeight: FontWeight.normal),
      ),
    );
  }
}
