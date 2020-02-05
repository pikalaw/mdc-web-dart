import 'package:angular/angular.dart';

/// MDC Image List provides a RTL-aware Material Design image list component.
/// An Image List consists of several items, each containing an image and
/// optionally supporting content (i.e. a text label).
///
/// # Usage
/// ```html
/// <mdc-image-list>
///   <mdc-image-list-item src="my-cat.png">My cat!</mdc-image-list-item>
///   <mdc-image-list-item src="my-dog.png">My dog!</mdc-image-list-item>
/// </mdc-image-list>
/// ```
@Component(
  selector: 'mdc-image-list',
  templateUrl: 'mdc_image_list.html',
  styleUrls: ['mdc_image_list.css'],
  changeDetection: ChangeDetectionStrategy.OnPush,
)
class MdcImageList {
}

/// See [MdcImageList] for usage.
@Component(
  selector: 'mdc-image-list-item',
  templateUrl: 'mdc_image_list_item.html',
  styleUrls: ['mdc_image_list.css'],
  changeDetection: ChangeDetectionStrategy.OnPush,
)
class MdcImageListItem {
	/// Url of the image source.
	@Input()
	String src;
}

const List<dynamic> mdcImageListDirectives = [
	MdcImageList,
	MdcImageListItem,
];
