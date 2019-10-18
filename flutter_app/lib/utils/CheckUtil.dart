
class CheckUtils {

  //姓名的正则表达式
  static bool checkName(String name) {
      return RegExp("^(([\\u4e00-\\u9fa5]{2,8})|([a-zA-Z]{2,16}))").hasMatch(name);
  }
  
  //邮箱的正则表达式
  static bool checkMail(String mail) {
    return RegExp("^[A-Z0-9a-z._%+-]*@[a-zA-Z0-9][\\w-]*\\.(?:com|cn|net|com.cn|qq.com|com.tw|sina.com|163.com|co.jp|com.hk)").hasMatch(mail);
  }
}