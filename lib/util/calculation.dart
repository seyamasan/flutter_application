class Calculation {
  static int age({required DateTime birthDate}) {
    final today = DateTime.now();
    int age = today.year - birthDate.year;
    
    // 今年の誕生日がまだ来ていない場合は1歳引く
    if (today.month < birthDate.month || 
        (today.month == birthDate.month && today.day < birthDate.day)) {
      age--;
    }

    if (age < 0) {
      throw Exception('Invalid birth date: $birthDate');
    }
    
    return age;
  }
}