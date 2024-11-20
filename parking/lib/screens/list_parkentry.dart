import 'package:flutter/material.dart';
import 'package:parking/models/park_entry.dart';
import 'package:parking/widgets/left_drawer.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class ParkEntryPage extends StatefulWidget {
  const ParkEntryPage({super.key});

  @override
  State<ParkEntryPage> createState() => _ParkEntryPageState();
}

class _ParkEntryPageState extends State<ParkEntryPage> {
  Future<List<ParkEntry>> fetchParkEntries(CookieRequest request) async {
    // Replace with the correct URL
    final response = await request.get('http://127.0.0.1:8000/json/');

    // Decode the response into JSON
    var data = response;

    // Convert JSON data into a list of ParkEntry objects
    List<ParkEntry> listEntries = [];
    for (var d in data) {
      if (d != null) {
        listEntries.add(ParkEntry.fromJson(d));
      }
    }
    return listEntries;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Park Entry List'),
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchParkEntries(request),
        builder: (context, AsyncSnapshot<List<ParkEntry>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                'Error: ${snapshot.error}',
                style: const TextStyle(color: Colors.red),
              ),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text(
                'Belum ada data park entry.',
                style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
              ),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final entry = snapshot.data![index];
                return Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        entry.fields.nama,
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text('Description: ${entry.fields.description}'),
                      const SizedBox(height: 10),
                      Text('Rating: ${entry.fields.rating}'),
                      const SizedBox(height: 10),
                      Text('Quantity: ${entry.fields.quantity}'),
                      const SizedBox(height: 10),
                      Text('Time: ${entry.fields.time}'),
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
