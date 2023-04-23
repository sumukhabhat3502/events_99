import 'package:get/get.dart';
import 'events_item_model.dart';

class EventsModel {
  RxList<EventsItemModel> eventsItemList =
      RxList.generate(3, (index) => EventsItemModel());
}
