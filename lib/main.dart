import 'package:flutter/material.dart';

void main() {
  runApp(CatatanPagiApp());
}

class CatatanPagiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CatatanPagiScreen(),
    );
  }
}

class CatatanPagiScreen extends StatefulWidget {
  @override
  _CatatanPagiScreenState createState() => _CatatanPagiScreenState();
}

class _CatatanPagiScreenState extends State<CatatanPagiScreen> {
  String judulCatatan = '';
  String isiCatatan = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catatan Pagi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Judul Catatan'),
              onChanged: (value) {
                setState(() {
                  judulCatatan = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Isi Catatan'),
              maxLines: 5,
              onChanged: (value) {
                setState(() {
                  isiCatatan = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      judulCatatan = '';
                      isiCatatan = '';
                    });
                  },
                  child: Text('Clear'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Implementasi aksi Submit disini, misalnya menyimpan catatan ke database
                    print('Judul Catatan: $judulCatatan');
                    print('Isi Catatan: $isiCatatan');
                  },
                  child: Text('Submit'),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'Judul Catatan: $judulCatatan',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text('Isi Catatan: $isiCatatan'),
          ],
        ),
      ),
    );
  }
}
