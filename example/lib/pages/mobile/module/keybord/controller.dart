import 'package:js_design_kit_example/common/index.dart';
import 'package:js_design_kit_example/common/manager/http/index.dart';

class MBKeyBoardController extends BaseController {
  void reqData() async {
    HttpManager.instance.get('/v1/finance/calendar/list');
  }
}
