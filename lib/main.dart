import 'package:flutter/material.dart';
import 'user.dart'; // Importa tu clase User generada

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: UserScreen(),
    );
  }
}

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Crear una instancia de User
    const user = User(name: 'Juan', age: 25);

    // Convertir el User a JSON
    final userJson = user.toJson();

    // Crear un nuevo User desde JSON
    final userFromJson = User.fromJson(userJson);

    // Usando metodo toString
    final userToString = user.toString();

    // Usando metodo copyWith
    final userModified = user.copyWith(email: "sebastian@gmail.com");

    return Scaffold(
      appBar: AppBar(
        title: const Text('User Example with Freezed'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Original User: ${user.name}, Age: ${user.age}, Email: ${user.email}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            Text(
              'User as JSON: $userJson',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Text(
              'User from JSON: $userFromJson',
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              'User from JSON: ${userFromJson.name}, Age: ${userFromJson.age}, Email: ${userFromJson.email}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Text(
              'User to String: $userToString',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Text(
              'User Modified: $userModified',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
