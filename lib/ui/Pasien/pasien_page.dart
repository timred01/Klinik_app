import 'package:flutter/material.dart';
import '/../model/pasien.dart';
import '/../ui/Pasien/pasien_detail.dart';
import '/../ui/Pasien/pasien_form.dart';
import '/../ui/Pasien/pasien_item.dart';
import '../widget/sidebar.dart';

class pasienPage extends StatefulWidget {
  const pasienPage({super.key});

  @override
  State<pasienPage> createState() => _pasienPageState();
}

class _pasienPageState extends State<pasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
        title: Text('Data Pasien'),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PasienForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          PasienItem(
              pasien: Pasien(
            nomor_rm: '15210450',
            nama: 'ALIF FIRMAN HAKIM',
            tanggal_lahir: '01 JANUARI 2000',
            nomor_telepon: '08123456789',
            alamat: 'firmanhakimalif@gmail.com',
          ))
        ],
      ),
    );
  }
}
