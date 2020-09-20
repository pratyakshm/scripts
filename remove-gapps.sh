echo "Please enable ADB USB debugging and grant this PC access from your Android device"
adb shell
echo "Removing Android Setup"
adb shell pm uninstall -k --user 0 com.google.android.setupwizard
echo "Removing Device Personalization Services"
adb shell pm uninstall -k --user 0 com.google.android.as
echo "Removing Device Health Services"
adb shell pm uninstall -k --user 0 com.google.android.apps.turbo
echo "Removing Google"
adb shell pm uninstall -k --user 0 com.google.android.googlequicksearchbox
echo "Removing Google Backup Transport"
adb shell pm uninstall -k --user 0 com.google.android.backuptransport
echo "Removing Google Chrome"
adb shell pm uninstall -k --user 0 com.android.chrome
echo "Removing Google Calendar"
adb shell pm uninstall -k --user 0 com.google.android.calendar
echo "Removing Google Contacts Syncadpater"
adb shell pm uninstall -k --user 0 com.google.android.syncadapters.contacts
echo "Removing Google Calendar Syncadapter"
adb shell pm uninstall -k --user 0 com.google.android.syncadapters.calendar
echo "Removing Google Drive"
adb shell pm uninstall -k --user 0 com.google.android.apps.docs
echo "Removing Google Keyboard"
adb shell pm uninstall -k --user 0 com.google.android.inputmethod.latin
echo "Removing Google Location History"
adb shell pm uninstall -k --user 0 com.google.android.gms.location.history
echo "Removing Google TTS Engine"
adb shell pm uninstall -k --user 0 com.google.android.tts
echo "Removing Google Photos"
adb shell pm uninstall -k --user 0 com.google.android.apps.photos
echo "Removing Google Play services"
adb shell pm uninstall -k --user 0 com.google.android.gms
echo "Removing Google Play Store"
adb shell pm uninstall -k --user 0 com.android.vending
echo "Removing Google Podcasts"
adb shell pm uninstall -k --user 0 com.google.android.apps.podcasts
echo "Removing Google Services Framework"
adb shell pm uninstall -k --user 0 com.google.android.gsf
echo "Removing Google Wallpaper Images"
echo "Removing GMS Setup"
adb shell pm uninstall -k --user 0 com.google.android.gms.setup
adb shell pm uninstall -k --user 0 com.google.android.apps.wallpaper.nexus
echo "Removing Pixel Setup"
adb shell pm uninstall -k --user 0 com.google.android.pixel.setupwizard

