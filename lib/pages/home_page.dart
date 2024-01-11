import 'package:flutter/material.dart';
import 'package:flutter_go_router/routes/routes.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 24.0,
          crossAxisSpacing: 24.0,
          children: [
            _buildMenuItem(
              context,
              'Input Transaksi',
              Icons.input,
              RouteNames.inputTransaksi,
            ),
            _buildMenuItem(
              context,
              'Laporan Transaksi',
              Icons.description,
              RouteNames.laporanTransaksi,
            ),
            _buildMenuItem(
              context,
              'Riwayat Transaksi',
              Icons.history,
              RouteNames.riwayatTransaksi,
            ),
            _buildMenuItem(
              context,
              'Detail Transaksi',
              Icons.list_alt,
              RouteNames.detailTransaksi,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(
      BuildContext context, String title, IconData icon, String route) {
    return GestureDetector(
      onTap: () {
        context.push(route);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 48.0,
              color: Theme.of(context).primaryColor,
            ),
            const SizedBox(height: 8.0),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
