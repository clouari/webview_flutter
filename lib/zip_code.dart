class ZipCode {
  final String zonecode;
  final String roadAddress;
  final String bname;

  // 생성자 만들고
  ZipCode(this.zonecode, this.roadAddress, this.bname);

  factory ZipCode.fromJson(Map<String, dynamic> json) {
    return ZipCode(
      json['zonecode'],
      json['roadAddress'],
      json['bname'],
    );
  }
}
