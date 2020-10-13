import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';

class HttpUtil {
  static HttpUtil instance;
  static final baseUrl = 'http://api.haitou.cc/';
  Dio dio;
  BaseOptions options;
  CancelToken cancelToken = CancelToken();

  static HttpUtil getInstance(){
    if (null == instance) instance = HttpUtil();
    return instance;
  }

  HttpUtil(){
    options = BaseOptions(
      baseUrl: baseUrl, // 请求的基地址
      connectTimeout:  10 * 1000, // 连接服务器超时时间, 10s
      receiveTimeout: 5 * 1000, // 响应流上前后两次接收到数据的间隔, 5s
      headers: {

      },
      contentType: Headers.formUrlEncodedContentType,
      responseType: ResponseType.plain
    );
    dio = Dio(options);
    // Cookie管理
    dio.interceptors.add(CookieManager(CookieJar()));
    // 添加拦截器
    dio.interceptors.add(InterceptorsWrapper(onRequest: (RequestOptions options){
      print("Request before");
      return options;
    }, onResponse: (Response response){
      print("Response before");
      return response;
    }, onError: (DioError e){
      print("Error before");
      return e;
    }));
  }
  /// get请求
  get (url, {data, options, cancelToken}) async {
    Response response;
    try {
      response = await dio.get(url,
          queryParameters: data, options: options, cancelToken: cancelToken);
      print("get success -------- ${response.statusCode}");
      print("get success -------- ${response.data}");
    } on DioError catch (e){
      print("get error ------- $e");
      formatError(e);
    }
    return response;
  }

  /// post请求
  post (url, {data, options, cancelToken}) async {
    Response response;
    try {
      response = await dio.post(url,
          queryParameters: data, options: options, cancelToken: cancelToken);
      print("post success ------- ${response.data}");
    } on DioError catch (e){
      print("post error ------ $e");
      formatError(e);
    }
    return response;
  }

  /// 下载文件
  downloadFile(urlPath, savePath) async {
    Response response;
    try{
      response = await dio.download(urlPath, savePath, onReceiveProgress: (int count, int total){
        /// 进度
        print("$count $total");
      });
      print("downloadFile success ------- ${response.data}");
    } on DioError catch (e){
      print("downloadFile error ------ $e");
      formatError(e);
    }
    return response.data;
  }

  void formatError(DioError e){
    if (e.type == DioErrorType.CONNECT_TIMEOUT){
      print("连接超时");
    } else if (e.type == DioErrorType.SEND_TIMEOUT){
      print("请求超时");
    } else if (e.type == DioErrorType.RECEIVE_TIMEOUT) {
      print("响应超时");
    } else if (e.type == DioErrorType.RESPONSE){
      print("出现异常");
    } else if (e.type == DioErrorType.CANCEL){
      print("请求取消");
    } else {
      print("未知错误");
    }
  }

  void cancelRequests(CancelToken token){
    token.cancel("cancelled");
  }
}