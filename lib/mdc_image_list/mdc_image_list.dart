import 'package:angular/angular.dart';

/// Image List.
///
/// MDC Image List provides a RTL-aware Material Design image list component.
/// An Image List consists of several items, each containing an image and
/// optionally supporting content (i.e. a text label).
@Component(
  selector: 'mdc-image-list',
  templateUrl: 'mdc_image_list.html',
  styleUrls: ['mdc_image_list.css'],
  changeDetection: ChangeDetectionStrategy.OnPush,
)
class MdcImageList {
}

@Component(
  selector: 'mdc-image-list-item',
  templateUrl: 'mdc_image_list_item.html',
  styleUrls: ['mdc_image_list.css'],
  changeDetection: ChangeDetectionStrategy.OnPush,
)
class MdcImageListItem {
	@Input()
	String src;
}

const List<dynamic> mdcImageListDirectives = [
	MdcImageList,
	MdcImageListItem,
];