//ไฟล์นี้เป็นไฟล์ใช้ในการจัดการข้อมูลระหว่าง mobile กับ Service
//จัดการอะไร????
//1. แปลงข้อมูลที่รับจาก Service ซึ่งเป็น JSON ให้เป็นข้อมูลที่เรานำไปใช้ได้ใน App
//2. แปลงข้อมูลใน App เป็น JSON เพื่อส่งไปที่ Service ที่ Server
class MyAccount {
  String message;
  String mId;
  String mName;
  String mImage;
  String mQuantity;
  String mPay;
  String mDate;

  MyAccount(
      {this.message,
        this.mId,
        this.mName,
        this.mImage,
        this.mQuantity,
        this.mPay,
        this.mDate});

  MyAccount.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    mId = json['mId'];
    mName = json['mName'];
    mImage = json['mImage'];
    mQuantity = json['mQuantity'];
    mPay = json['mPay'];
    mDate = json['mDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['mId'] = this.mId;
    data['mName'] = this.mName;
    data['mImage'] = this.mImage;
    data['mQuantity'] = this.mQuantity;
    data['mPay'] = this.mPay;
    data['mDate'] = this.mDate;
    return data;
  }
}