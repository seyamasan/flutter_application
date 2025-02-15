enum Options {
  noSelection,
  option1,
  option2,
  option3;

  String get label {
    switch (this) {
      case Options.noSelection:
        return 'No selection';
      case Options.option1:
        return 'Option 1';
      case Options.option2:
        return 'Option 2';
      case Options.option3:
        return 'Option 3';
    }
  }

  int get number {
    switch (this) {
      case Options.noSelection:
        return 0;
      case Options.option1:
        return 1;
      case Options.option2:
        return 2;
      case Options.option3:
        return 3;
    }
  }
}