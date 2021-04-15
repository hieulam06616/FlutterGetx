package com.example.demo_get

import android.content.Intent
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    private val CHANNEL = "com.example.demo_get"

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler {
            call, result ->
            // Note: this method is invoked on the main thread.
            if (call.method == "getBatteryLevel") {
                nextScreen();
            }
        }
    }

    fun nextScreen(){
        val intent = Intent(this, HomeActivity::class.java).apply {
//            putExtra(EXTRA_MESSAGE, message)
        }
        startActivity(intent)
    }
}
