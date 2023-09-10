class Tourist {
  final String fName;
  final String lName;
  final String dateBirth;
  final String nationally;
  final String nationallyNumber;
  final String lastDateNationallyNumber;

  const Tourist(
      {required this.fName,
      required this.lName,
      required this.dateBirth,
      required this.nationally,
      required this.nationallyNumber,
      required this.lastDateNationallyNumber});


  static const defTourist = Tourist(fName: '', lName: '', dateBirth: '', nationally: '', nationallyNumber: '', lastDateNationallyNumber: '');
}
