import 'package:angular/angular.dart';

import '../../mdc_image_list/mdc_image_list.dart';

@Component(
  selector: 'mdc-web-demo',
  templateUrl: 'mdc_web_demo_component.html',
  styleUrls: ['mdc_web_demo_component.css'],
  directives: [coreDirectives, mdcImageListDirectives],
  changeDetection: ChangeDetectionStrategy.OnPush,
)
class MdcWebDemoComponent {
  final listItemLabels = List<String>.generate(20, (i)=>'Icon #${i+1}');
}
