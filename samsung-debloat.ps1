
Write-Host "Debloating Samsung packages, its safe to ignore any errors because some packages might not exist on device..."
adb shell pm disable-user --user 0 com.samsung.android.themestore
adb shell pm disable-user --user 0 com.samsung.android.aremoji
adb shell pm disable-user --user 0 com.sec.android.app.samsungapps
adb shell pm disable-user --user 0 com.samsung.android.game.gamehome
adb shell pm disable-user --user 0 com.samsung.android.scloud
adb shell pm disable-user --user 0 com.samsung.android.emojiupdater
adb shell pm disable-user --user 0 com.samsung.android.smartfitting
adb shell pm disable-user --user 0 com.samsung.android.game.gametools
adb shell pm disable-user --user 0 com.enhance.gameservice
adb shell pm disable-user --user 0 com.samsung.android.game.gos
adb shell pm disable-user --user 0 com.monotype.android.font.foundation
adb shell pm disable-user --user 0 com.sec.android.app.billing
adb shell pm disable-user --user 0 com.samsung.android.wellbeing
adb shell pm disable-user --user 0 com.sec.spp.push
adb shell pm disable-user --user 0 com.samsung.android.keyguardwallpaperupdator
adb shell pm disable-user --user 0 com.samsung.android.app.watchmanagerstub
adb shell pm disable-user --user 0 com.samsung.android.fmm
adb shell pm disable-user --user 0 com.samsung.android.beaconmanager
adb shell pm disable-user --user 0 com.sec.android.diagmonagent
adb shell pm disable-user --user 0 com.samsung.android.smartmirroring
adb shell pm disable-user --user 0 com.samsung.android.kidsinstaller
adb shell pm disable-user --user 0 com.samsung.android.app.omcagent
adb shell pm disable-user --user 0 flipboard.boxer.app
adb shell pm disable-user --user 0 com.samsung.android.app.reminder
adb shell pm disable-user --user 0 com.diotek.sec.lookup.dictionary
adb shell pm disable-user --user 0 com.samsung.android.aircommandmanager
adb shell pm disable-user --user 0 com.samsung.knox.securefolder
adb shell pm disable-user --user 0 com.samsung.android.mdecservice
adb shell pm disable-user --user 0 com.samsung.android.allshare.service.fileshare
adb shell pm disable-user --user 0 com.samsung.android.stickercenter
adb shell pm disable-user --user 0 com.samsung.android.mateagent
adb shell pm disable-user --user 0 com.samsung.android.allshare.service.mediashare
adb shell pm disable-user --user 0 com.sec.android.easyMover.Agent
adb shell pm disable-user --user 0 com.samsung.android.app.social
adb shell pm disable-user --user 0 com.samsung.android.drivelink.stub
adb shell pm disable-user --user 0 com.samsung.android.fast // samsung vpn secured wifi
adb shell pm disable-user --user 0 com.sec.unifiedwfc // dont disable if you use wifi calls
adb shell pm disable-user --user 0 com.samsung.android.da.daagent // Samsung Dual Messenger
adb shell pm disable-user --user 0 com.samsung.android.mdx // added with android 10 Link to Windows Services
adb shell pm disable-user --user 0 com.hiya.star // ( Hiya / caller ID block / antispam )
adb shell pm disable-user --user 0 com.samsung.android.net.wifi.wifiguider // added with Android 10 Wifi Tips

Write-Host "Debloating Google packages...)"
adb shell pm disable-user --user 0 com.google.ar.core
adb shell pm disable-user --user 0 com.google.android.partnersetup
adb shell pm disable-user --user 0 com.android.wallpaperbackup
adb shell pm disable-user --user 0 com.android.printspooler
adb shell pm disable-user --user 0 com.android.wallpaper.livepicker
adb shell pm disable-user --user 0 com.android.calllogbackup
adb shell pm disable-user --user 0 com.google.android.tts
adb shell pm disable-user --user 0 com.google.android.feedback
adb shell pm disable-user --user 0 com.google.android.printservice.recommendation
adb shell pm disable-user --user 0 com.google.android.googlequicksearchbox
adb shell pm disable-user --user 0 com.google.android.setupwizard
adb shell pm disable-user --user 0 com.android.bips
adb shell pm disable-user --user 0 com.android.providers.partnerbookmarks
adb shell pm disable-user --user 0 com.android.bookmarkprovider
adb shell pm disable-user --user 0 com.google.android.music
adb shell pm disable-user --user 0 com.google.android.videos

Write-Host "Debloating extra OEM packages (if they exist)..."
adb shell pm disable-user --user 0 com.eterno
adb shell pm disable-user --user 0 com.opera.max.oem
adb shell pm disable-user --user 0 com.opera.max.preinstall
adb shell pm disable-user --user 0 com.aura.oobe.samsung
adb shell pm disable-user --user 0 com.samsung.logwriter
adb shell pm disable-user --user 0 com.samsung.android.easysetup
adb shell pm disable-user --user 0 com.samsung.android.sdk.handwriting
adb shell pm disable-user --user 0 com.samsung.storyservice
adb shell pm disable-user --user 0 com.samsung.android.airtel.stubapp
adb shell pm disable-user --user 0 com.samsung.android.spaymini
adb shell pm disable-user --user 0 com.samsung.android.app.galaxyfinder
adb shell pm disable-user --user 0 com.samsung.android.app.mirrorlink
adb shell pm disable-user --user 0 com.samsung.android.app.simplesharing
adb shell pm disable-user --user 0 com.sec.android.widgetapp.samsungapps
adb shell pm disable-user --user 0 com.sec.android.widgetapp.webmanual
adb shell pm disable-user --user 0 com.samsung.visionprovider
adb shell pm disable-user --user 0 com.samsung.SMT
adb shell pm disable-user --user 0 com.samsung.android.mfi
adb shell pm disable-user --user 0 com.google.android.apps.tachyon
adb shell pm disable-user --user 0 com.sec.android.app.chromecustomizations
adb shell pm disable-user --user 0 com.dsi.ant.server
adb shell pm disable-user --user 0 com.dsi.ant.service.socket
adb shell pm disable-user --user 0 com.dsi.ant.sample.acquirechannels
adb shell pm disable-user --user 0 com.dsi.ant.plugins.antplus
adb shell pm disable-user --user 0 com.samsung.android.app.settings.bixby
adb shell pm disable-user --user 0 com.samsung.android.bixby.service
adb shell pm disable-user --user 0 com.samsung.android.bixby.agent
adb shell pm disable-user --user 0 com.samsung.android.bixbyvision.framework
adb shell pm disable-user --user 0 com.samsung.android.bixby.wakeup
adb shell pm disable-user --user 0 com.samsung.android.app.spage
adb shell pm disable-user --user 0 com.samsung.android.bixby.agent.dummy
adb shell pm disable-user --user 0 com.samsung.android.visionintelligence
adb shell pm disable-user --user 0 com.samsung.systemui.bixby2
adb kill-server
