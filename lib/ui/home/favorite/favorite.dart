import 'package:alquran/values/style.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);
  static const String routeName = '/favorite';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorite',
          style: titleAccount,
        ),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Nomor'),
                SizedBox(width: 40),
                Text('Nama Ayat'),
                SizedBox(height: 40),
              ],
            ),
          );
        },
      ),
    );
  }
}
