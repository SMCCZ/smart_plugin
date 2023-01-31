package com.smart.plugin10.smart_plugin;

import android.content.Context;
import android.os.Build;
import android.widget.Toast;
import android.content.Intent;
import android.net.Uri;
import androidx.annotation.NonNull;

import java.time.Instant;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry;

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
      case "getCurrentUTCTime": {
        String time = null;
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.O) {
          time = Instant.now().toString();
        }
        result.success(time);
        break;
      }
      case "openUrl": {
        result.success(null);
        break;
      }
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
   // _openUrl();
    return Build.MANUFACTURER;
  }


}
