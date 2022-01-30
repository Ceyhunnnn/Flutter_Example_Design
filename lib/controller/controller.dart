import 'package:get/get.dart';

class Controller extends GetxController{
  var pageNo=0.obs;

  int getBottomNavBarIndex(index){
    pageNo.value=index;
    return pageNo.value.toInt();
  }
}