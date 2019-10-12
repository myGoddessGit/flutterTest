import 'package:http/http.dart' as http;

class HttpController{
  static void get(String url,Function callback,
  {Map<String,String> params ,Function errorCallBack}) async {
    if(params !=null && params.isNotEmpty){
      StringBuffer sb = new StringBuffer("?");
      params.forEach((key,value){
        sb.write("$key" + "=" + "$value" + "&");
      });
      String paraStr = sb.toString();
      paraStr = paraStr.substring(0,paraStr.length - 1);
      url+=paraStr;
    }
    try{
      http.Response res = await http.get(url);
      if(callback!=null){
        callback(res.body);
      }
    }catch (exception){
      if(errorCallBack !=null){
        errorCallBack(exception);
      }
    }
  }
  static void post(String url ,Function callback,
      {Map<String,String> params ,Function errorCallBack})async{
    try{
      http.Response res = await http.post(url,body: params);

      if(callback !=null){
        callback(res.body);
      }
    }catch(e){
      if(errorCallBack !=null){
        errorCallBack(e);
      }
    }
  }
}