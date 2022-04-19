// mixin

class Musician {}

mixin MusicalPerformer on Musician {
  int a = 0;
}

class SingerDancer extends Musician with MusicalPerformer {
  void localPrint() {
    print(a);
  }
}

void main() {
  SingerDancer singerDancer = SingerDancer();
  // singerDancer.a = 2;
  singerDancer.localPrint();
}
