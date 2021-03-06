import 'package:flutter/material.dart';
import 'package:app/config/palette.dart' as palette;
import 'package:google_fonts/google_fonts.dart';

class ContactSubmit extends StatelessWidget {
  const ContactSubmit({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: palette.primary,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 45),
              Text(
                'Nice to \nmeet you, \nwe will \nchat soon.',
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    fontSize: 42,
                    color: palette.textColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 35),
              SizedBox(
                height: 50,
                width: 220,
                child: FlatButton(
                  color: palette.btn,
                  textColor: Colors.white,
                  child: Text(
                    'Take me back home',
                    style: TextStyle(fontSize: 12),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
