import 'dart:async';
import 'package:flutter_app/honglongapi/Brandbean.dart';
import 'package:flutter_app/honglongapi/HotXJHbean.dart';
import 'package:flutter_app/honglongapi/HotXZbean.dart';
import 'package:flutter_app/honglongapi/ResumeMBbean.dart';
import 'BSZTbean.dart';
import 'BSZTData.dart';
import 'http_honglong.dart';
import 'CityData.dart';
class HongLongApi {
  static Future<BrandInfo> getBrand() async {
    var response = await Http.getJson("xyzp/brand-list", {});
    return BrandInfo.fromJson(response);
  }
  static Future<HotXJHInfo> getHotXJH() async {
    var response = await Http1.getJson("xjh/list", {});
    return HotXJHInfo.fromJson(response);
  }
  static Future<HotXZInfo> getHotXZ() async {
    var response = await Http2.getJson("xyzp/list", {});
    return HotXZInfo.fromJson(response);
  }
  static Future<ResumeMBInfo> getResumeMB() async {
    var response = await Http3.getJson("resume/template", {});
    return ResumeMBInfo.fromJson(response);
  }
  static Future<BSZTData> getBSZT() async {
    var response = await Http4.getJson("bszt/list", {});
    return BSZTData.fromJson(response);
  }
  static Future<CityData> getCollege() async {
    var response = await Http5.getJson("common/const?type=college", {});
    return CityData.fromJson(response);
  }
}
