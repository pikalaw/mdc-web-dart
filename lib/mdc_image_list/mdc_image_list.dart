/// MDC Image List provides a RTL-aware Material Design image list component.
/// An Image List consists of several items, each containing an image and
/// optionally supporting content (i.e. a text label).
///
/// # Usage
///
/// `my_tag.dart`:
/// ```dart
/// import 'package:mdc_web/mdc_image_list/mdc_image_list.dart';
///
/// @Component(
///   selector: 'my-tag',
///   templateUrl: 'my_tag_component.html',
///   styleUrls: ['my_tag_component.css'],
///   directives: [mdcImageListDirectives],
///   changeDetection: ChangeDetectionStrategy.OnPush,
/// )
/// class MyTagComponent {
/// }
/// ```
///
/// `my_tag_component.html`:
/// ```html
/// <ul mdcImageList>
///   <li>
///     <img src="..." *aspectContained/>
///     <label *supported>Text label</label>
///   </li>
///   ...
/// </ul>
/// ```
///
/// `my_tag_component.scss`:
/// ```scss
/// @use "package:mdc-web/mdc_image_list";
/// ```
library mdc_image_list;

import 'package:angular/angular.dart';

@Directive(selector: '[mdcImageList]')
class MdcImageListDirective {
  @HostBinding('class.mdc-image-list') static const class_ = true;
}

@Directive(selector: '[mdcImageList] li')
class MdcImageListItemDirective {
  @HostBinding('class.mdc-image-list__item') static const class_ = true;
}

@Directive(selector: '[mdcImageList] [aspectContained]')
class MdcImageListImageContainerDirective {
  @HostBinding('class.mdc-image-list__image-aspect-container')
  static const class_ = true;
}

@Directive(selector: '[mdcImageList] img')
class MdcImageListImageDirective {
  @HostBinding('class.mdc-image-list__image')
  static const class_ = true;
}

@Directive(selector: '[mdcImageList] [supported]')
class MdcImageListSupportingDirective {
  @HostBinding('class.mdc-image-list__supporting')
  static const class_ = true;
}

@Directive(selector: '[mdcImageList] label')
class MdcImageListLabelDirective {
  @HostBinding('class.mdc-image-list__label')
  static const class_ = true;
}

const mdcImageListDirectives = [
  MdcImageListDirective,
  MdcImageListItemDirective,
  MdcImageListImageContainerDirective,
  MdcImageListImageDirective,
  MdcImageListSupportingDirective,
  MdcImageListLabelDirective,
];
