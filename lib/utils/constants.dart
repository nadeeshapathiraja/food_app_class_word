// ignore_for_file: constant_identifier_names

class Constants {
  //assets path
  static const IMAGE_PATH = 'assets/images/';
  static const ICON_PATH = 'assets/icons/';

  //Image assets functions
  static String imageAssets(img) => '$IMAGE_PATH$img';
  //icon assets Function
  static String iconAssets(icon) => '$IMAGE_PATH$icon';
}
