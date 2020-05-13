package com.alex.platzitripsapp

import android.annotation.TargetApi
import android.os.Build
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterActivity() {
    @TargetApi(Build.VERSION_CODES.P)
    override fun configureFlutterEngine( flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine)

        this.getWindow().setStatusBarColor(android.graphics.Color.TRANSPARENT)
    }
}
