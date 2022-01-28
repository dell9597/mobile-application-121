class YearStd {
  String? year;
  String? yearValue;

  YearStd(this.year, this.yearValue);

  static getYear_Std() {
    return [
      YearStd('ปี 1', '1'),
      YearStd('ปี 2', '2'),
      YearStd('ปี 3', '3'),
      YearStd('ปี 4', '4'),
    ];
  }
}
