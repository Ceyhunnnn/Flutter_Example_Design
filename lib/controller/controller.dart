import 'package:get/get.dart';

class Controller extends GetxController{
  var pageNo=0.obs;

  void getBottomNavBarIndex(index){
    pageNo.value=index;
    print("CurrentIndex: "+pageNo.value.toString());
  }


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}