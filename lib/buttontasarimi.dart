import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class HesapMakinesiButtonu extends StatelessWidget {
  final String metin;
  final int dolguRengi;
  final int metinRengi;
  final double metinBoyutu;
  final Function tiklama;

  const HesapMakinesiButtonu(
      {required this.metin,
      required this.dolguRengi,
      required this.metinRengi,
      required this.metinBoyutu,
      required this.tiklama});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.0),
      child: SizedBox(
        width: 90,
        height: 90,
        child: ElevatedButton(
          onPressed: () {
            tiklama(metin);
          },
          style: ElevatedButton.styleFrom(
              primary:Color(dolguRengi),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              )),
          child: Text(
            metin,
            style: GoogleFonts.rubik(
                textStyle: TextStyle(
              fontSize: metinBoyutu,
              color:Color(metinRengi),
            )),
          ),
        ),
      ),
    );
  }
}
