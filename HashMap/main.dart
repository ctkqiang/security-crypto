import "dart:collection";

void main () {
  __HM hashmap = new __HM();
  hashmap.__hm();
}

class __HM {
  // @ REFER : https://api.dart.dev/stable/2.8.3/dart-collection/dart-collection-library.html
  void __hm () {
    HashMap __hashmap = new HashMap<int, String>();
    LinkedHashMap  __linkedHashMap = new LinkedHashMap<int, String>();
    SplayTreeMap __treeMap = new SplayTreeMap<int, String>();

    Map __map = Map<int, String>();
    if (__map is LinkedHashMap) {
      print("This is a LinkedHashMap==/");
    } 
  }
}