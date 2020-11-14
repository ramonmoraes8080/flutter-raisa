import 'package:raisa/models/time_entry.dart';

class Harvest {
  List getEntries() {
    List ret = new List();
    ret.add(new TimeEntry("Foo", 1.50));
    ret.add(new TimeEntry("Bar", 0.25));
    return ret;
  }
}