import 'package:get/get.dart';
import 'listtime_item_model.dart';
import 'listtime1_item_model.dart';

class HomeModel {
  RxList<ListtimeItemModel> listtimeItemList =
      RxList.generate(4, (index) => ListtimeItemModel());

  RxList<Listtime1ItemModel> listtime1ItemList =
      RxList.generate(4, (index) => Listtime1ItemModel());
}
