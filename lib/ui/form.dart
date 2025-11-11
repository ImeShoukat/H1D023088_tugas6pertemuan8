import 'package:flutter/material.dart';
import 'package:tugas6/ui/detail.dart';

class Mhs_Form extends StatefulWidget {
  const Mhs_Form({super.key});
  @override
  _Mhs_FormState createState() => _Mhs_FormState();
}

class _Mhs_FormState extends State<Mhs_Form> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _birthYearController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Data'),
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.white,
        elevation: 8.0,
      ),
      body: SingleChildScrollView( 
        child: Container(
          padding: const EdgeInsets.all(16.0), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              const Text(
                "Data Mahasiswa",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24), 
              _textboxNama(),
              const SizedBox(height: 16),
              _textboxNIM(),
              const SizedBox(height: 16),
              _textboxbirthYear(),
              const SizedBox(height: 32), 
              _tombolSimpan(),
            ],
          ),
        ),
      )
    );
  }

  _textboxNama(){
    return TextField(
      decoration: const InputDecoration(labelText: 'Nama Mahasiswa'),
      controller: _namaController,  
    );
  }

  _textboxNIM(){
    return TextField(
      decoration: const InputDecoration(labelText: 'NIM'),
      controller: _nimController,  
    );
  }

  _textboxbirthYear(){
    return TextField(
      decoration: const InputDecoration(labelText: 'Tahun Kelahiran'),
      controller: _birthYearController,  
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        String NamaMahasiswa = _namaController.text;
        String NIMMahasiswa = _nimController.text;

        int? birthYear = int.tryParse(_birthYearController.text);

        if (NamaMahasiswa.isEmpty || NIMMahasiswa.isEmpty || birthYear == null) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Pastikan semua data terisi dengan benar!'),
              backgroundColor: Colors.red,
            ),
          );
          return; 
        }
        int age = DateTime.now().year - birthYear;
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Mhs_Detail(
          NamaMahasiswa: NamaMahasiswa,
          NIMMahasiswa: NIMMahasiswa,
          birthYear: birthYear,
          age: age,
        )));
      },
      child: const Text('Simpan'),
    );
  }
}
