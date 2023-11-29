import 'package:flutter/material.dart';
import 'package:rekomendasi_cukur/models/screen_arguments.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.characteristic});
  final Characteristic characteristic;

  @override
  Widget build(BuildContext context) {
    String gender = characteristic.gender.toString();
    String hairType = characteristic.hairType.toString();
    String shortLong = characteristic.shortLong.toString();
    String faceShapes = characteristic.faceShapes.toString();
    String preferenceStyle = characteristic.preferenceStyle.toString();
    final _future = Supabase.instance.client
        .from('hair_styles')
        .select<List<Map<String, dynamic>>>(
            'name, path, gender_id, hair_type_id, hair_short_long_id, face_shape_id, preference_style_id')
        .like("gender_id", '%$gender%')
        .like("hair_type_id", '%$hairType%')
        .like("hair_short_long_id", '%$shortLong%')
        .like("face_shape_id", '%$faceShapes%')
        .like("preference_style_id", '%$preferenceStyle%');
    return Scaffold(
        appBar: AppBar(
          title: const Text("Rekomendasi Untuk Anda"),
        ),
        body: FutureBuilder<List<Map<String, dynamic>>>(
          future: _future,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            }
            final faceShapes = snapshot.data!;
            if (faceShapes.isNotEmpty) {
              return GridView.count(
                  crossAxisCount: 2,
                  children: List.generate(faceShapes.length, (index) {
                    return Center(
                      child: Column(
                        children: [
                          Image.network(faceShapes[index]['path'],
                              width: 150, height: 150, fit: BoxFit.cover),
                          Text(faceShapes[index]['name']),
                        ],
                      ),
                    );
                  }));
            } else {
              return const Center(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Mohon maaf kami tidak dapat menemukan Style Rambut yang cocok",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              );
            }
          },
        ));
  }
}
