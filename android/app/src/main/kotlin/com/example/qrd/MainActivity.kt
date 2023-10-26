package com.example.qrd

import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import com.yandex.mapkit.MapKitFactory

class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine){
        MapKitFactory.setApiKey("fd5d3a85-e919-4f75-82ff-ecc4f0449649")
        super.configureFlutterEngine(flutterEngine)
    }
}
