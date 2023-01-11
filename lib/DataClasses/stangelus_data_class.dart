class StAngelusDataClass {
  String partyVenue = '';
  String partyDate = '';
  String hikeVenue = '';
  String hikeDate = '';
  String charityVenue = '';
  String charityDate = '';

  String get getPartyVenue {
    return partyVenue;
  }

  String get getPartyDate {
    return partyDate;
  }

  String get getHikeVenue {
    return hikeVenue;
  }

  String get getHikeDate {
    return hikeDate;
  }

  String get getCharityVenue {
    return charityVenue;
  }

  String get getCharityDate {
    return charityDate;
  }

  StAngelusDataClass(this.partyVenue, this.partyDate, this.hikeVenue,
      this.hikeDate, this.charityVenue, this.charityDate);
}
