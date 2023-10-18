import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:lesson_localization/models/category.dart';
import 'package:lesson_localization/models/pet.dart';

sealed class Datas {
  static List<Pet> select(Animals animal) {
    switch (animal) {
      case Animals.birds:
        return [
          Pet(
              imageName: "assets/animals/bird/creature-bird-blue-fly-1.png",
              name: "Happy",
              birthYear: 2017,
              category: animal.name),
          Pet(
              imageName: "assets/animals/bird/swift-logo-1.png",
              name: "Swifty",
              birthYear: 2018,
              category: animal.name),
          Pet(
              imageName: "assets/animals/bird/creature-owl-attack-1.png",
              name: "Speedy",
              birthYear: 2018,
              category: animal.name)
        ];
      case Animals.cats:
        return [
          Pet(
              imageName: "assets/animals/cat/creature-cat-derp.png",
              name: "Max",
              birthYear: 2015,
              category: animal.name),
          Pet(
              imageName: "assets/animals/cat/creature-cat-purple-cute.png",
              name: "Jake",
              birthYear: 2018,
              category: animal.name),
          Pet(
              imageName: "assets/animals/cat/creature-cat-purr-1.png",
              name: "Daisy",
              birthYear: 2012,
              category: animal.name),
          Pet(
              imageName: "assets/animals/cat/creature_cat-ball.png",
              name: "Sunny",
              birthYear: 2008,
              category: animal.name),
          Pet(
              imageName: "assets/animals/cat/creature_cat-notification.png",
              name: "Oscar",
              birthYear: 2017,
              category: animal.name)
        ];
      case Animals.chameleons:
        return [
          Pet(
              imageName: "assets/animals/chameleon/creature_chameleon.png",
              name: "Zoe",
              birthYear: 2015,
              category: animal.name)
        ];
      case Animals.cows:
        return [
          Pet(
              imageName: "assets/animals/cow/creature-cow-1.png",
              name: "Betty",
              birthYear: 2016,
              category: animal.name),
          Pet(
              imageName: "assets/animals/cow/creature-cow-02-.png",
              name: "Rosie",
              birthYear: 2013,
              category: animal.name)
        ];
      case Animals.dogs:
        return [
          Pet(
              imageName: "assets/animals/dog/creature-dog-bone.png",
              name: "Buddy",
              birthYear: 2018,
              category: animal.name),
          Pet(
              imageName: "assets/animals/dog/creature-dog-bone-2.png",
              name: "Molly",
              birthYear: 2014,
              category: animal.name),
          Pet(
              imageName: "assets/animals/dog/creature-dog-cute.png",
              name: "Bella",
              birthYear: 2009,
              category: animal.name),
          Pet(
              imageName: "assets/animals/dog/creature-dog-pug.png",
              name: "Dixie",
              birthYear: 2018,
              category: animal.name),
          Pet(
              imageName: "assets/animals/dog/creature_dog-and-bone.png",
              name: "Freddy",
              birthYear: 2012,
              category: animal.name),
          Pet(
              imageName: "assets/animals/dog/creature_dog-sitting.png",
              name: "Lucky",
              birthYear: 2016,
              category: animal.name),
          Pet(
              imageName: "assets/animals/dog/creature_dog-sunglasses.png",
              name: "Snoopy",
              birthYear: 2015,
              category: animal.name),
          Pet(
              imageName: "assets/animals/dog/creature_dog-tennis-ball.png",
              name: "Joker",
              birthYear: 2018,
              category: animal.name),
          Pet(
              imageName: "assets/animals/dog/creature_dog_juggling.png",
              name: "Diego",
              birthYear: 2018,
              category: animal.name),
          Pet(
              imageName: "assets/animals/dog/creature_dog_yoga.png",
              name: "Bruno",
              birthYear: 2016,
              category: animal.name),
        ];
      case Animals.monkeys:
        return [
          Pet(
              imageName: "assets/animals/monkey/creature-monkey-happy.png",
              name: "Turbo",
              birthYear: 2015,
              category: animal.name),
        ];
      case Animals.penguins:
        return [
          Pet(
              imageName: "assets/animals/penguin/creature_penguin-scarf.png",
              name: "Helen",
              birthYear: 2017,
              category: animal.name),
          Pet(
              imageName: "assets/animals/penguin/creature_penguin-skating.png",
              name: "Fred",
              birthYear: 2014,
              category: animal.name),
        ];
      case Animals.pigs:
        return [
          Pet(
              imageName: "assets/animals/pig/creature-head-pig.png",
              name: "Piggy",
              birthYear: 2015,
              category: animal.name),
        ];
      case Animals.rats:
        return [
          Pet(
              imageName: "assets/animals/rat/creature-rat.png",
              name: "Cutie",
              birthYear: 2018,
              category: animal.name),
        ];
      case Animals.snakes:
        return [
          Pet(
              imageName: "assets/animals/snake/creature_snake_1_orange.png",
              name: "Worm",
              birthYear: 2013,
              category: animal.name),
          Pet(
              imageName: "assets/animals/snake/creature_snake_2_green.png",
              name: "Noodles",
              birthYear: 2018,
              category: animal.name),
          Pet(
              imageName: "assets/animals/snake/creature_snake_3_purple.png",
              name: "Slider",
              birthYear: 2017,
              category: animal.name),
        ];
      case Animals.squirrels:
        return [
          Pet(
              imageName: "assets/animals/squirrel/creature_squirrel-nuts.png",
              name: "Chippy",
              birthYear: 2017,
              category: animal.name),
        ];
    }
  }

  static Category pets(Animals animal) {
    switch (animal) {
      case Animals.birds: return Category("birds".tr(), description: "birds_desc".tr());
      case Animals.cats: return Category("cats".tr(), description: "cats_desc".tr());
      case Animals.chameleons: return Category("chameleons".tr(), description: "chameleons_desc".tr());
      case Animals.cows: return Category("cows".tr(), description: "cows_desc".tr());
      case Animals.dogs: return Category("dogs".tr(), description: "dogs_desc".tr());
      case Animals.monkeys: return Category("monkeys".tr(), description: "monkeys_desc".tr());
      case Animals.penguins: return Category("penguins".tr(), description: "penguins_desc".tr());
      case Animals.pigs: return Category("pigs".tr(), description: "pigs_desc".tr());
      case Animals.rats: return Category("rats".tr(), description: "rats_desc".tr());
      case Animals.snakes: return Category("snakes".tr(), description: "snakes_desc".tr());
      case Animals.squirrels: return Category("squirrels".tr(), description: "squirrels_desc".tr());
    }
  }

  static String age(int year) {
    final time = 2020 - year;
    return "$time years old";
  }
}

enum Animals {
  birds, // 0
  cats,
  chameleons,
  cows,
  dogs,
  monkeys,
  penguins,
  pigs,
  rats,
  snakes,
  squirrels,
}
