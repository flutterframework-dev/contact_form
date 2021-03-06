import 'package:app/screens/contact_submit.dart';
import 'package:flutter/material.dart';
import 'package:app/config/palette.dart' as palette;
import 'package:app/components/label_text.dart';
import 'package:google_fonts/google_fonts.dart';

class Contact extends StatefulWidget {
  const Contact({Key key}) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: SecondHalfShapePainter(),
      child: Container(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Container(
              child: ListView(
                children: [
                  Container(
                    height: 113,
                    child: Stack(
                      children: [
                        CustomPaint(
                          painter: FirstHalfShapePainter(),
                          child: Container(),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 15.0, right: 15.0),
                            child: RichText(
                              text: TextSpan(
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    fontSize: 42,
                                    color: palette.textColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                children: [
                                  TextSpan(text: "Hello"),
                                  TextSpan(
                                    text: ".",
                                    style: TextStyle(color: palette.primary),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '125 Nichols Rd',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: palette.textColor),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Toronto, ON,',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: palette.textColor),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'B8E 7C6',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: palette.textColor),
                            ),
                          ],
                        ),
                        SizedBox(width: 35),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '(647) 237-2581',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: palette.textColor),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'topman@gmail.com',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: palette.textColor),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'dribbble.com/topman',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: palette.textColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  ContactForm(formKey: _formKey),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key key,
    @required GlobalKey<FormState> formKey,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LabelText(label: 'Name'),
            TextFormField(
              cursorColor: Colors.grey,
              style: TextStyle(color: palette.textColor, fontSize: 13),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 6.0),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: palette.primary),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 25),
            LabelText(label: 'Phone'),
            TextFormField(
              cursorColor: Colors.grey,
              style: TextStyle(color: palette.textColor, fontSize: 13),
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 6.0),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: palette.primary),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 25),
            LabelText(label: 'Email'),
            TextFormField(
              cursorColor: Colors.grey,
              style: TextStyle(color: palette.textColor, fontSize: 13),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 6.0),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: palette.primary),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 25),
            LabelText(label: 'Anything else you\'d like us to know?'),
            TextFormField(
              cursorColor: Colors.grey,
              style: TextStyle(color: palette.textColor, fontSize: 13),
              keyboardType: TextInputType.text,
              minLines: 6,
              maxLines: 6,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 6.0),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: palette.primary),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
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
                  'Submit',
                  style: TextStyle(fontSize: 12),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactSubmit()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondHalfShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    Paint paint = Paint();

    var background = Path();
    paint.color = Colors.white;
    background.addRect(Rect.fromLTRB(0, 0, width, height));
    background.close();
    canvas.drawPath(background, paint);

    var path = Path();
    paint.color = palette.primary;
    path.moveTo(35, height);
    path.lineTo(width, height * 0.88);
    path.lineTo(width, height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class FirstHalfShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    Paint paint = Paint();

    var path = Path();
    paint.color = palette.primary;
    path.lineTo(width, 0);
    path.lineTo(0, 85);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
