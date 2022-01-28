class Football {
  String? teamname;
  bool? checked;

  Football(this.teamname, this.checked);

  static getteam() {
    return [
      Football('แมนเชสเตอร์ ซิตี้ ', false),
      Football('แมนเชสเตอร์ ยูไนเต็ด ', false),
      Football('ลิเวอร์พูล ', false),
      Football('เชลซี ', false),
      Football('อาร์เซนอล ', false),
      Football('ท็อตแน่ม ฮ็อทสเปอร์ ', false),
      Football('เลสเตอร์ ซิตี้ ', false),
    ];
  }
}
