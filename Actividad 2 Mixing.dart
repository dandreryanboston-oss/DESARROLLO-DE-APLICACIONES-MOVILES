abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

mixin Caminar {
  void caminar() => print('estoy caminando');
}

mixin Nadar {
  void nadar() => print('estoy nadnado');
}

mixin Volar {
  void volar() => print('estoy volando');
}

class Delfin extends Mamifero with Nadar {}

class Bat extends Mamifero with Caminar, Volar {}

class Cat extends Mamifero with Caminar {}

class Dove extends Ave with Caminar, Volar {}

class Duck extends Ave with Caminar, Volar, Nadar {}

class Shark extends Pez with Nadar {}

class FlyingFish extends Pez with Nadar, Volar {}

void main() {
  print('--- Delfin ---');
  final delfin = Delfin();
  delfin.nadar();

  print('\n--- Bat ---');
  final bat = Bat();
  bat.caminar();
  bat.volar();

  print('\n--- Cat ---');
  final cat = Cat();
  cat.caminar();

  print('\n--- Dove ---');
  final dove = Dove();
  dove.caminar();
  dove.volar();

  print('\n--- Duck ---');
  final duck = Duck();
  duck.caminar();
  duck.volar();
  duck.nadar();

  print('\n--- Shark ---');
  final shark = Shark();
  shark.nadar();

  print('\n--- FlyingFish ---');
  final flyingFish = FlyingFish();
  flyingFish.nadar();
  flyingFish.volar();
}