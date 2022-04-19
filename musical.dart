// mixin
// Mixin, Interfaces, Abstract classes,

mixin Musical {
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;

  void entertainMe() {
    if (canPlayPiano) {
      print('Playing piano');
    } else if (canConduct) {
      print('Waving hands');
    } else {
      print('Humming to self');
    }
  }
}

mixin Singer {
  bool canPlayMusic = false;
  bool canStopMusic = false;

  void enterMe() {
    if (canPlayMusic) {
      if (canStopMusic) {
        print('Stop music');
      } else {
        print('Play music');
      }
    } else if (canStopMusic) {
      print('Stop music');
    }
  }
}

class Maestro with Singer, Musical {
  @override
  void entertainMe() {
    super.entertainMe();
  }

  @override
  void enterMe() {
    super.enterMe();
  }
}

void main() {
  Maestro maestro = Maestro();
  // maestro.canPlayPiano = true;
  // maestro.entertainMe();
  // maestro.canPlayPiano = false;
  // maestro.canCompose = true;
  // maestro.entertainMe();
  maestro.canPlayMusic = true;
  maestro.enterMe();
  maestro.canStopMusic = true;
  maestro.enterMe();
}
