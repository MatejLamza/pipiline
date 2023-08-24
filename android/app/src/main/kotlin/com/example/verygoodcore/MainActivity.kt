package com.example.verygoodcore.pipeline

import io.flutter.embedding.android.FlutterActivity
import com.microsoft.appcenter.AppCenter;
import com.microsoft.appcenter.analytics.Analytics;
import com.microsoft.appcenter.crashes.Crashes;
import android.os.Bundle

class MainActivity : FlutterActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        AppCenter.start(
            getApplication(), "2b5e0277-046c-4dc7-9c98-ecdf6b3ed70a",
            Analytics::class.java, Crashes::class.java
        )
    }
}
