import 'package:get/get.dart';
import 'show_item_model.dart';

class ShowModel {
  RxList<ShowItemModel> showItemList =
      RxList.generate(4, (index) => ShowItemModel());
}
