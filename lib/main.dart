import 'package:calculator/buttontasarimi.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(HesapMakinesi());
}

class HesapMakinesi extends StatefulWidget {
  HesapMakinesi({super.key});

  @override
  State<HesapMakinesi> createState() => _HesapMakinesiState();
}

class _HesapMakinesiState extends State<HesapMakinesi> {
  late int sayi1;
  late int sayi2;
  String gosterilecekSayi = "";
  String islemGecmisi = "Geçmiş";
  late String sonuc;
  late String islemTutucu;

  void btnTiklama(String buttonDegeriTutucu) {
    print(buttonDegeriTutucu);

    if (buttonDegeriTutucu == "AC") {
      gosterilecekSayi = "";
      sonuc = "";
      sayi1 = 0;
      sayi2 = 0;
      islemGecmisi = "";
      islemTutucu = "";
    } else if (buttonDegeriTutucu == "C") {
      gosterilecekSayi = "";
      sonuc = "";
      sayi1 = 0;
      sayi2 = 0;
    } else if (buttonDegeriTutucu == "BACK") {
      sonuc = gosterilecekSayi.substring(0, gosterilecekSayi.length - 1);
    } else if (buttonDegeriTutucu == "/") {
      sayi1 = int.parse(gosterilecekSayi);
      sonuc = "";
      islemTutucu = buttonDegeriTutucu;
    } else if (buttonDegeriTutucu == "X") {
      sayi1 = int.parse(gosterilecekSayi);
      sonuc = "";
      islemTutucu = buttonDegeriTutucu;
    } else if (buttonDegeriTutucu == "-") {
      sayi1 = int.parse(gosterilecekSayi);
      sonuc = "";
      islemTutucu = buttonDegeriTutucu;
    } else if (buttonDegeriTutucu == "+") {
      sayi1 = int.parse(gosterilecekSayi);
      sonuc = "";
      islemTutucu = buttonDegeriTutucu;
    } else if (buttonDegeriTutucu == "+/-") {
      if (gosterilecekSayi[0] != "-") {
        sonuc = "-" + gosterilecekSayi;
      } else {
        sonuc = gosterilecekSayi.substring(1);
      }
    } else if (buttonDegeriTutucu == "=") {
      sayi2 = int.parse(gosterilecekSayi);
      if (islemTutucu == "+") {
        sonuc = (sayi1 + sayi2).toString();
        islemGecmisi =
            sayi1.toString() + islemTutucu.toString() + sayi2.toString();
      } else if (islemTutucu == "-") {
        sonuc = (sayi1 - sayi2).toString();
        islemGecmisi =
            sayi1.toString() + islemTutucu.toString() + sayi2.toString();
      } else if (islemTutucu == "X") {
        sonuc = (sayi1 * sayi2).toString();
        islemGecmisi =
            sayi1.toString() + islemTutucu.toString() + sayi2.toString();
      } else if (islemTutucu == "/") {
        sonuc = (sayi1 / sayi2).toString();
        islemGecmisi =
            sayi1.toString() + islemTutucu.toString() + sayi2.toString();
      }
    } else {
      sonuc = int.parse(gosterilecekSayi + buttonDegeriTutucu).toString();
    }

    setState(() {
      gosterilecekSayi = sonuc;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Hesap Makinesi",
            ),
            centerTitle: true,
          ),
          body: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Container(
              alignment: Alignment(1.0, 1.0),
              child: Padding(
                padding: EdgeInsets.only(left: 8),
                child: Column(
                  children: [
                    Text(
                      islemGecmisi,
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          fontSize: 30,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    Text(
                      gosterilecekSayi,
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          fontSize: 30,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                HesapMakinesiButtonu(
                  metin: "AC",
                  dolguRengi: 0xFFFF5722,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 24.0,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButtonu(
                  metin: "C",
                  dolguRengi: 0xFFFF5722,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 24.0,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButtonu(
                  metin: "BACK",
                  dolguRengi: 0xFFFFEB3B,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 14.0,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButtonu(
                  metin: "/",
                  dolguRengi: 0xFFFFEB3B,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 30.0,
                  tiklama: btnTiklama,
                ),
              ],
            ),
            Row(
              children: [
                HesapMakinesiButtonu(
                  metin: "9",
                  dolguRengi: 0xFFFF5722,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 24.0,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButtonu(
                  metin: "8",
                  dolguRengi: 0xFFFF5722,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 24.0,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButtonu(
                  metin: "7",
                  dolguRengi: 0xFFFF5722,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 24.0,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButtonu(
                  metin: "X",
                  dolguRengi: 0xFFFFEB3B,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 24.0,
                  tiklama: btnTiklama,
                ),
              ],
            ),
            Row(
              children: [
                HesapMakinesiButtonu(
                  metin: "6",
                  dolguRengi: 0xFFFF5722,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 24.0,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButtonu(
                  metin: "5",
                  dolguRengi: 0xFFFF5722,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 24.0,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButtonu(
                  metin: "4",
                  dolguRengi: 0xFFFF5722,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 24.0,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButtonu(
                  metin: "-",
                  dolguRengi: 0xFFFFEB3B,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 35.0,
                  tiklama: btnTiklama,
                ),
              ],
            ),
            Row(
              children: [
                HesapMakinesiButtonu(
                  metin: "3",
                  dolguRengi: 0xFFFF5722,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 24.0,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButtonu(
                  metin: "2",
                  dolguRengi: 0xFFFF5722,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 24.0,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButtonu(
                  metin: "1",
                  dolguRengi: 0xFFFF5722,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 24.0,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButtonu(
                  metin: "+",
                  dolguRengi: 0xFFFFEB3B,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 30.0,
                  tiklama: btnTiklama,
                ),
              ],
            ),
            Row(
              children: [
                HesapMakinesiButtonu(
                  metin: "+/-",
                  dolguRengi: 0xFFFF5722,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 24.0,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButtonu(
                  metin: "0",
                  dolguRengi: 0xFFFF5722,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 24.0,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButtonu(
                  metin: "00",
                  dolguRengi: 0xFFFF5722,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 24.0,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButtonu(
                  metin: "=",
                  dolguRengi: 0xFFFFEB3B,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 30.0,
                  tiklama: btnTiklama,
                ),
              ],
            )
          ]),
        ));
  }
}
