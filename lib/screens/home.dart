import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lesson_localization/datas/datas.dart';
import 'package:lesson_localization/models/pet.dart';
import 'package:lesson_localization/screens/detail.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  void goDetail({required BuildContext context, required Pet pet}) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Detail(pet: pet),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("app_name").tr(),
        actions: [
          PopupMenuButton<Locale>(
            onSelected: context.setLocale,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
            itemBuilder: (context) {
              return const [
                PopupMenuItem(value: Locale('uz', 'UZ'), child: Text("🇺🇿 UZ"),),
                PopupMenuItem(value: Locale('ru', 'RU'), child: Text("🇷🇺 RU")),
                PopupMenuItem(value: Locale('en', 'US'), child: Text("🇺🇸 EN")),
              ];
            },
            icon: const Icon(Icons.language_rounded),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: Animals.values.length,
        itemBuilder: (context, index) {
          final animal = Animals.values[index]; //0
          final category = Datas.pets(animal);
          final pets = Datas.select(animal); // birds

          return Card(
            clipBehavior: Clip.antiAlias,
            child: ExpansionTile(
              title: const Text('count').plural(pets.length, name: 'num', args: [category.pet]),
              subtitle: Text(category.description),
              leading: IconButton.filledTonal(
                  onPressed: null, icon: Text(pets.length.toString())),
              children: pets.map((pet) {
                return ListTile(
                  dense: true,
                  leading: Image(image: AssetImage(pet.imageName)),
                  title: Text(pet.name),
                  subtitle: Text(Datas.age(pet.birthYear)),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () => goDetail(pet: pet, context: context),
                );
              }).toList(),
            ),
          );
        },
      ),
    );
  }
}
