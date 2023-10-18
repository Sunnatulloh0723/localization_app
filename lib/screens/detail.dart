import 'package:flutter/material.dart';
import 'package:lesson_localization/models/pet.dart';

class Detail extends StatelessWidget {
  final Pet pet;
  const Detail({Key? key, required this.pet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pet.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image(image: AssetImage(pet.imageName)),
              const SizedBox(height: 20),
              Text("${pet.name} was born in ${pet.birthYear}", style: Theme.of(context).textTheme.headlineMedium,)
            ],
          ),
        ),
      ),
    );
  }
}
