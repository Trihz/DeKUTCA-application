class WeeklyActivitiesDataClass {
  String mass = '';
  String shrineWashing = '';
  String waweru = '';
  String koinonia = '';

  String get getMass {
    return mass;
  }

  String get getShrineWashing {
    return shrineWashing;
  }

  String get getWaweru {
    return waweru;
  }

  String get getKoinonia {
    return koinonia;
  }

  WeeklyActivitiesDataClass(this.mass,this.shrineWashing,this.waweru,this.koinonia);
}
