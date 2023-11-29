import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class StyleWanitaPage extends StatefulWidget {
  const StyleWanitaPage({super.key});

  @override
  State<StyleWanitaPage> createState() => _StylWanitaPageState();
}

class _StylWanitaPageState extends State<StyleWanitaPage> {
  final _future = Supabase.instance.client
      .from('hair_styles')
      .select<List<Map<String, dynamic>>>()
      .eq("gender_id", "2");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Style Wanita"),
        ),
        body: FutureBuilder<List<Map<String, dynamic>>>(
          future: _future,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            }
            final faceShapes = snapshot.data!;
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
          },
        ));
  }
}
