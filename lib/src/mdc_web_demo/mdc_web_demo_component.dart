import 'package:angular/angular.dart';

import '../../mdc_image_list/mdc_image_list.dart';

@Component(
  selector: 'mdc-web-demo',
  templateUrl: 'mdc_web_demo_component.html',
  styleUrls: ['mdc_web_demo_component.css'],
  directives: [MdcImageList],
  changeDetection: ChangeDetectionStrategy.OnPush,
)
class MdcWebDemoComponent {
}
