package pl.refericon.gcore_flutter.pigeon

import android.content.Context
import pl.refericon.gcore_flutter.Messages.GCoreHost


class GCoreFlutterHost(private val context: Context): GCoreHost {
    override fun getPlatformVersion(): String {
        return "Android test ${android.os.Build.VERSION.RELEASE}"
    }
}