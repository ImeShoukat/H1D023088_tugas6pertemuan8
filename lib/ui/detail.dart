import 'package:flutter/material.dart';

class Mhs_Detail extends StatelessWidget {
  final String NamaMahasiswa;
  final String NIMMahasiswa;
  final int birthYear;
  final int age;

  const Mhs_Detail(
    {super.key,
    required this.NamaMahasiswa,
    required this.NIMMahasiswa,
    required this.birthYear,
    required this.age
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Mahasiswa'),
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.white,
        elevation: 8.0,
      ),
      body: Container(
        color: Colors.grey[100],
        padding: const EdgeInsets.all(12.0),
        child: Card(
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.person, color: Colors.blue, size: 30),
                title: Text(
                  NamaMahasiswa,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(
                  'Nama Mahasiswa',
                  style: TextStyle(color: Colors.black54),
                ),
              ),
              const Divider(height: 1, indent: 16, endIndent: 16), 
              ListTile(
                leading: const Icon(Icons.badge, color: Colors.blue, size: 30),
                title: Text(
                  NIMMahasiswa,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                subtitle: const Text(
                  'NIM Mahasiswa',
                  style: TextStyle(color: Colors.black54),
                ),
              ),
              
              const Divider(height: 1, indent: 16, endIndent: 16),

              ListTile(
                leading: const Icon(Icons.cake_outlined, color: Colors.blue, size: 30),
                title: Text(
                  '$birthYear',
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                subtitle: const Text(
                  'Tahun Kelahiran',
                  style: TextStyle(color: Colors.black54),
                ),
              ),
              
              const Divider(height: 1, indent: 16, endIndent: 16),

              ListTile(
                leading: const Icon(Icons.calendar_today, color: Colors.blue, size: 30),
                title: Text(
                  '$age Tahun',
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                subtitle: const Text(
                  'Umur',
                  style: TextStyle(color: Colors.black54),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
