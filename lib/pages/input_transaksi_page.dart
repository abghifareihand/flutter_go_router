import 'package:flutter/material.dart';
import 'package:flutter_go_router/routes/routes.dart';
import 'package:go_router/go_router.dart';

class InputTransaksiPage extends StatefulWidget {
  const InputTransaksiPage({super.key});

  @override
  State<InputTransaksiPage> createState() => _InputTransaksiPageState();
}

class _InputTransaksiPageState extends State<InputTransaksiPage> {
  final TextEditingController usernameController =
      TextEditingController(text: 'abghifareihand');
  final TextEditingController fullnameController =
      TextEditingController(text: 'Abghi Fareihan');
  final TextEditingController addressController =
      TextEditingController(text: 'Jalan Andara');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Transaksi'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 16.0),
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: fullnameController,
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: addressController,
                decoration: InputDecoration(
                  labelText: 'Address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
              const SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () {
                  context.go(RouteNames.home);
                },
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
