echo "Removing Google"
adb shell pm uninstall -k --user 0 com.google.android.googlequicksearchbox
echo "Removing Google Photos"
adb shell pm uninstall -k --user 0 com.google.android.apps.photos
echo "Removing Google Contacts Syncadpater"
adb shell pm uninstall -k --user 0 com.google.android.syncadapters.contacts
echo "Removing Google Calendar Syncadapter"
adb shell pm uninstall -k --user 0 com.google.android.syncadapters.calendar
echo "Removing Google Location History"
adb shell pm uninstall -k --user 0 com.google.android.gms.location.history
echo "Removing Google Chrome"
adb shell pm uninstall -k --user 0 com.android.chrome
echo "Removing Google TTS Engine"
adb shell pm uninstall -k --user 0 com.google.android.tts
echo "Removing Pixel Setup"
adb shell pm uninstall -k --user 0 com.google.android.pixel.setupwizard
echo "Removing Google Calendar"
adb shell pm uninstall -k --user 0 com.google.android.calendar
echo "Removing Android Setup"
adb shell pm uninstall -k --user 0 com.google.android.setupwizard
echo "Removing Device Personalization Services"
adb shell pm uninstall -k --user 0 com.google.android.as
echo "Removing Device Health Services"
adb shell pm uninstall -k --user 0 com.google.android.apps.turbo
echo "Removing FM Radio"
adb shell pm uninstall -k --user 0 com.android.fmradio



