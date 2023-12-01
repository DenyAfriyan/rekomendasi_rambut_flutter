import 'package:flutter/material.dart';
import 'package:rekomendasi_cukur/models/screen_arguments.dart';
import 'package:rekomendasi_cukur/pages/result_page.dart';
import 'package:rekomendasi_cukur/utils/colors.dart';

enum Gender { pria, wanita }

enum HairTypes { ikal, lurus, keriting }

enum ShortLong { panjang, pendek }

enum FaceShapes { bulat, persegi, diamond, oval }

enum PreferenceStyle { casual, formal }

class DecisionPage extends StatefulWidget {
  const DecisionPage({super.key});

  @override
  State<DecisionPage> createState() => _DecisionPageState();
}

class _DecisionPageState extends State<DecisionPage> {
  Gender? _characterGender = Gender.pria;
  HairTypes? _characterHairTypes = HairTypes.ikal;
  ShortLong? _characterShortLong = ShortLong.panjang;
  FaceShapes? _characterFaceShapes = FaceShapes.bulat;
  PreferenceStyle? _characterPreferenceStyle = PreferenceStyle.casual;

  int gender = 1;
  int hairType = 1;
  int shortLong = 1;
  int faceShapes = 1;
  int preferenceStyle = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "Rekomendasi Style Rambut",
            style: TextStyle(color: Colors.white),
          ),
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: primaryColor,
        ),
        body: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text(
                "Jenis Kelamin",
                style: TextStyle(fontSize: 20),
              ),
            ),
            RadioListTile<Gender>(
              title: const Text('Pria'),
              value: Gender.pria,
              groupValue: _characterGender,
              onChanged: (Gender? value) {
                setState(() {
                  _characterGender = value;
                  gender = 1;
                });
              },
            ),
            RadioListTile<Gender>(
              title: const Text('Wanita'),
              value: Gender.wanita,
              groupValue: _characterGender,
              onChanged: (Gender? value) {
                setState(() {
                  _characterGender = value;
                  gender = 2;
                });
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text(
                "Jenis Rambut",
                style: TextStyle(fontSize: 20),
              ),
            ),
            RadioListTile<HairTypes>(
              title: const Text('Ikal'),
              value: HairTypes.ikal,
              groupValue: _characterHairTypes,
              onChanged: (HairTypes? value) {
                setState(() {
                  _characterHairTypes = value;
                  hairType = 1;
                });
              },
            ),
            RadioListTile<HairTypes>(
              title: const Text('Lurus'),
              value: HairTypes.lurus,
              groupValue: _characterHairTypes,
              onChanged: (HairTypes? value) {
                setState(() {
                  _characterHairTypes = value;
                  hairType = 2;
                });
              },
            ),
            RadioListTile<HairTypes>(
              title: const Text('Keriting'),
              value: HairTypes.keriting,
              groupValue: _characterHairTypes,
              onChanged: (HairTypes? value) {
                setState(() {
                  _characterHairTypes = value;
                  hairType = 3;
                });
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text(
                "Panjang Rambut",
                style: TextStyle(fontSize: 20),
              ),
            ),
            RadioListTile<ShortLong>(
              title: const Text('Panjang'),
              value: ShortLong.panjang,
              groupValue: _characterShortLong,
              onChanged: (ShortLong? value) {
                setState(() {
                  _characterShortLong = value;
                  shortLong = 1;
                });
              },
            ),
            RadioListTile<ShortLong>(
              title: const Text('Pendek'),
              value: ShortLong.pendek,
              groupValue: _characterShortLong,
              onChanged: (ShortLong? value) {
                setState(() {
                  _characterShortLong = value;
                  shortLong = 2;
                });
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text(
                "Bentuk Wajah",
                style: TextStyle(fontSize: 20),
              ),
            ),
            RadioListTile<FaceShapes>(
              title: const Text('Bulat'),
              value: FaceShapes.bulat,
              groupValue: _characterFaceShapes,
              onChanged: (FaceShapes? value) {
                setState(() {
                  _characterFaceShapes = value;
                  faceShapes = 1;
                });
              },
            ),
            RadioListTile<FaceShapes>(
              title: const Text('Persegi'),
              value: FaceShapes.persegi,
              groupValue: _characterFaceShapes,
              onChanged: (FaceShapes? value) {
                setState(() {
                  _characterFaceShapes = value;
                  faceShapes = 2;
                });
              },
            ),
            RadioListTile<FaceShapes>(
              title: const Text('Diamond'),
              value: FaceShapes.diamond,
              groupValue: _characterFaceShapes,
              onChanged: (FaceShapes? value) {
                setState(() {
                  _characterFaceShapes = value;
                  faceShapes = 3;
                });
              },
            ),
            RadioListTile<FaceShapes>(
              title: const Text('Oval'),
              value: FaceShapes.oval,
              groupValue: _characterFaceShapes,
              onChanged: (FaceShapes? value) {
                setState(() {
                  _characterFaceShapes = value;
                  faceShapes = 4;
                });
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text(
                "Preferensi Style",
                style: TextStyle(fontSize: 20),
              ),
            ),
            RadioListTile<PreferenceStyle>(
              title: const Text('Casual'),
              value: PreferenceStyle.casual,
              groupValue: _characterPreferenceStyle,
              onChanged: (PreferenceStyle? value) {
                setState(() {
                  _characterPreferenceStyle = value;
                  preferenceStyle = 1;
                });
              },
            ),
            RadioListTile<PreferenceStyle>(
              title: const Text('Formal'),
              value: PreferenceStyle.formal,
              groupValue: _characterPreferenceStyle,
              onChanged: (PreferenceStyle? value) {
                setState(() {
                  _characterPreferenceStyle = value;
                  preferenceStyle = 2;
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.amber,
                      backgroundColor:
                          primaryColor, // Text Color (Foreground color)
                    ),
                    child: const Text("Lihat Hasil"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResultPage(
                                  characteristic: Characteristic(
                                      gender,
                                      hairType,
                                      shortLong,
                                      faceShapes,
                                      preferenceStyle))));
                    }),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ));
  }
}
