class SCCDataClass {
  String venue_stjoseph = '';
  String time_stjoseph = '';
  String venue_stangelus = '';
  String time_stangelus = '';
  String venue_stpeter = '';
  String time_stpeter = '';

  String get getVenueStJoseph {
    return venue_stjoseph;
  }

  String get getTimeStJoseph {
    return time_stjoseph;
  }

  String get getVenueStAngelus {
    return venue_stangelus;
  }

  String get getTimeStAngelus {
    return time_stangelus;
  }

  String get getVenueStPeter {
    return venue_stpeter;
  }

  String get getTimeStPeter {
    return time_stpeter;
  }

  SCCDataClass(this.venue_stjoseph, this.time_stjoseph, this.venue_stangelus,
      this.time_stangelus, this.venue_stpeter, this.time_stpeter);
}
