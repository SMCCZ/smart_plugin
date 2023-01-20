package com.smart.plugin10.smart_plugin;
import android.net.Uri;
import android.os.Build;
import android.os.health.PackageHealthStats;
import android.telecom.Connection;

import androidx.annotation.NonNull;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;

/** SmartPlugin */
public class SmartPlugin implements FlutterPlugin, MethodCallHandler {
  /// The MethodChannel that will the communication between Flutter and native
  /// Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine
  /// and unregister it
  /// when the Flutter Engine is detached from the Activity
  private MethodChannel channel;

  @Override
  public void onAttachedToEngine(@NonNull FlutterPluginBinding flutterPluginBinding) {
    channel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "smart_plugin");
    channel.setMethodCallHandler(this);
  }

  @Override
  public void onMethodCall(@NonNull MethodCall call, @NonNull Result result) {
    switch (call.method) {
      case "getPlatformVersion":
        String version = _getPlatformVersion();
        result.success("Android " + version);
        break;
      case "getManufacturer":
        String manufacturer = _getManufacturer();
        result.success(manufacturer);
        break;
      case "getBoard":
        String board = Build.BOARD;
        result.success(board);
        break;
      case "getRadioVersion":
        String radioVersion = Build.getRadioVersion();
        result.success(radioVersion);
        break;
      case "getBrand":
        String brand = Build.BRAND;
        result.success(brand);
        break;
      case "getDevice": {
        String device = Build.DEVICE;
        result.success(device);
        break;
      }
      case "getID": {
        String device = Build.ID;
        result.success(device);
        break;
      }
      case "wakeUpAlarmsCount":
        int alarmsCount = PackageHealthStats.MEASUREMENTS_WAKEUP_ALARMS_COUNT;
        result.success(alarmsCount);
        break;
      default:
        result.notImplemented();
        break;
    }
  }

  @Override
  public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
    channel.setMethodCallHandler(null);
  }

  private String _getPlatformVersion() {
    return Build.VERSION.RELEASE;
  }

  private String _getManufacturer() {
    return Build.MANUFACTURER;
  }
}
