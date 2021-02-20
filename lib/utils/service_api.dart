//ไฟล์นี้เอาไว้เขียนโค้ดเรียกใช้ Service ต่างๆ ที่ Server
//สร้าวตัวแปรกลางเก็บ URL ของ Server ที่เก็บ Service ที่เราจะเรียกใช้
import 'dart:convert';

import 'package:flutterappep3/models/myaccount.dart';
import 'package:http/http.dart' as http;

String urlService = "http://10.1.2.30";

//สร้างเมธอดเรียกใช้ Service : serviceGetAllMyAccount.php ที่ Server
Future<List<MyAccount>> serviceGetAllMyAccount() async{
  //ติดต่อ Service เพื่อดึงข้อมูลมาใช้ใน App ในที่นี้ข้อมูลที่ได้มาจะอยู่ตัวแปร response
  final response = await http.get(
    Uri.encodeFull('${urlService}/accountdiary/serviceGetAllMyAccount.php'),
    headers:{"Content-Type": "application/json"},
  );

  //เอาข้อมูลในตัวแปร response (ซึ่ง encode เป็น JSON) มาทำการแปลงเป็นข้อมูลที่จะใช้ App
  if( response.statusCode == 200 ){
    //เริ่มจาก decode ข้อมูล JSON
    final responseData = jsonDecode(response.body);

    //decode เสร็จก็นำมาแปลงเป็นข้อมูลแบบ List เพื่อนำไปใช้งาน
    final myaccountData = await responseData.map<MyAccount>((json){
      return MyAccount.fromJson(json);
    }).toList();
    //สุดท้ายส่งค่ากลับไปให้จุดที่เรียกใช้เมธอดนี้เพื่อนำผลที่ได้ไปใช้งาน
   return myaccountData;
  }else{
    return null;
  }
}


