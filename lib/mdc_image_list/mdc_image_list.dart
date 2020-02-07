/// MDC Image List provides a RTL-aware Material Design image list component.
/// An Image List consists of several items, each containing an image and
/// optionally supporting content (i.e. a text label).
///
/// # Basic Usage
///
/// my_app_component.dart:
/// ```dart
/// import 'package:mdc_web/mdc_image_list/mdc_image_list.dart';
///
/// @Component(
///   selector: 'my-app',
///   templateUrl: 'my_app_component.html',
///   styleUrls: ['my_app_component.css'],
///   directives: [mdcImageListDirectives],
/// )
/// class MyAppComponent {
/// }
/// ```
///
/// my_app_component.html:
/// ```html
/// <ul class="my-list" mdcImageList>
///   <li mdcImageList>
///     <img src="favicon.png" mdcImageList/>
///     <div mdcImageList supporting>
///       <label mdcImageList>My favicon!</label>
///     </div>
///   </li>
/// </ul>
/// ```
///
/// my_app_component.scss:
/// ```css
/// .my-image-list {
///    // Set how many columns per row.
///    @include image-list.standard-columns(5);
/// }
/// ```
///
/// Notes:
/// 1. The attribute `mdcImageList` for `ul`, `li`, `img`, `div` and `label`.
/// 1. The attributes `supporting` for `div`.
///
/// # Advanced Usage
///
/// ```css
/// .my-image-list {
///    // Set how many columns per row.
///    @include image-list.standard-columns(5);
/// }
/// ```
///
/// More [Sass mixins](https://github.com/material-components/material-components-web/tree/master/packages/mdc-image-list#sass-mixins)
/// are available.
///
/// For masonry layout, try this:
/// ```html
/// <ul mdcImageList masonry>
///   <li mdcImageList>
///     <img src="favicon.png" mdcImageList/>
///     <div mdcImageList supporting>
///       <label mdcImageList>My favicon!</label>
///     </div>
///   </li>
/// </ul>
/// ```
/// ```css
/// .my-image-list {
///    @include image-list.masonry-columns(5);
/// }
/// ```
///
/// If the images are not already sized to the correct aspect ratio,
/// use `imageAspectContainer` as below:
///
/// ```html
/// <ul mdcImageList>
///   <li mdcImageList>
///     <div mdcImageList imageAspectContainer>
///       <img src="favicon.png" mdcImageList/>
///     </div>
///     <div mdcImageList supporting>
///       <label mdcImageList>My favicon!</label>
///     </div>
///   </li>
/// </ul>
/// ```
library mdc_image_list;

import 'package:angular/angular.dart';

@Directive(selector: 'ul[mdcImageList]')
class MdcImageListDirective {
  @HostBinding('class.mdc-image-list') static const class_ = true;
}

@Directive(selector: 'ul[mdcImageList][masonry]')
class MdcImageListMasonryDirective {
  @HostBinding('class.mdc-image-list--masonry') static const class_ = true;
}

@Directive(selector: 'ul[mdcImageList][withTextProtection]')
class MdcImageListWithTextProtectionDirective {
  @HostBinding('class.mdc-image-list--with-text-protection')
  static const class_ = true;
}

@Directive(selector: 'li[mdcImageList]')
class MdcImageListItemDirective {
  @HostBinding('class.mdc-image-list__item') static const class_ = true;
}

@Directive(selector: 'div[mdcImageList][imageAspectContainer]')
class MdcImageListImageContainerDirective {
  @HostBinding('class.mdc-image-list__image-aspect-container')
  static const class_ = true;
}

@Directive(selector: 'img[mdcImageList]')
class MdcImageListImageDirective {
  @HostBinding('class.mdc-image-list__image')
  static const class_ = true;
}

@Directive(selector: 'div[mdcImageList][supporting]')
class MdcImageListSupportingDirective {
  @HostBinding('class.mdc-image-list__supporting')
  static const class_ = true;
}

@Directive(selector: 'label[mdcImageList]')
class MdcImageListLabelDirective {
  @HostBinding('class.mdc-image-list__label')
  static const class_ = true;
}

const mdcImageListDirectives = [
  MdcImageListDirective,
  MdcImageListMasonryDirective,
  MdcImageListWithTextProtectionDirective,
  MdcImageListItemDirective,
  MdcImageListImageContainerDirective,
  MdcImageListImageDirective,
  MdcImageListSupportingDirective,
  MdcImageListLabelDirective,
];
