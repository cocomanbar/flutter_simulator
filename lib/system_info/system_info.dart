import 'package:device_info_plus/device_info_plus.dart';
import 'dart:io';

class FSDeviceInfo {
  static final defaultDevice = FSDeviceInfo();

  IosDeviceInfo? iosInfo;
  AndroidDeviceInfo? androidInfo;
  Map<String, dynamic> _deviceData = <String, dynamic>{};

  void setupDeviceInfo() {
    if (Platform.isIOS) {
      DeviceInfoPlugin()
          .iosInfo
          .then((info) => {iosInfo = info, _deviceData = _readSystemInfo()});
    } else if (Platform.isAndroid) {
      DeviceInfoPlugin().androidInfo.then(
          (info) => {androidInfo = info, _deviceData = _readSystemInfo()});
    }
  }

  static dynamic getSystemInfoKey(String? aKey) {
    FSDeviceInfo.defaultDevice._deviceData[aKey];
  }

  Map<String, dynamic> _readSystemInfo() {
    String? brand;
    String? systemVersion;
    String? platform;
    bool? isPhysicalDevice;
    String? uuid;
    String? incremental;
    if (Platform.isIOS) {
      brand = iosInfo?.model;
      systemVersion = iosInfo?.systemVersion;
      platform = iosInfo?.systemName;
      isPhysicalDevice = iosInfo?.isPhysicalDevice;
      uuid = iosInfo?.identifierForVendor;
      incremental = iosInfo?.systemVersion;
    } else if (Platform.isAndroid) {
      brand = androidInfo?.model;
      systemVersion = androidInfo?.version.release;
      platform = "Android";
      isPhysicalDevice = androidInfo?.isPhysicalDevice;
      uuid = androidInfo?.id;
      incremental = androidInfo?.version.incremental;
    }
    return {
      FSDeviceInfoKey.brand: brand,
      FSDeviceInfoKey.systemVersion: systemVersion,
      FSDeviceInfoKey.platform: platform,
      FSDeviceInfoKey.uuid: uuid,
      FSDeviceInfoKey.incremental: incremental,
      FSDeviceInfoKey.isPhysicalDevice: isPhysicalDevice,
    };
  }
}

extension FSDeviceInfoKey on FSDeviceInfo {
  static String brand = "brand";
  static String systemVersion = "systemVersion";
  static String platform = "platform";
  static String uuid = "uuid";
  static String incremental = "incremental";
  static String isPhysicalDevice = "isPhysicalDevice";
}
