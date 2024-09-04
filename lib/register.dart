import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Foreach Pizza"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Pseudo'),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(labelText: 'Email'),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(labelText: 'Mot de passe'),
                obscureText: true,
              ),
              SizedBox(height: 10),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(labelText: 'Promotion'),
                items: [
                  DropdownMenuItem(value: 'Promo1', child: Text('Promotion 1')),
                  DropdownMenuItem(value: 'Promo2', child: Text('Promotion 2')),
                  DropdownMenuItem(value: 'Promo3', child: Text('Promotion 3')),
                ],
                onChanged: (value) {
                  // Logique lors de la sélection d'une promotion
                },
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {
                      // Logique pour la case à cocher
                    },
                  ),
                  Text("Accepter les termes et conditions"),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Logique d'inscription
                },
                child: Text("S'inscrire"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}