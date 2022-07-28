#!/system/bin/sh

list_files() {
	echo ConfigUpdater.apk
	#echo GoogleBackupTransport.apk
	echo GmsCore.apk
	echo GooglePartnerSetup.apk
	echo GoogleLoginService.apk
	#echo GoogleFeedback.apk
	#echo GoogleEars.apk
	echo OneTimeInitializer.apk
	echo NetworkLocation.apk
	echo MediaUploader.apk
	#echo LatinImeDictionaryPack.apk
	#echo GoogleTTS.apk
	echo GoogleServicesFramework.apk
	echo Phonesky.apk
	echo SetupWizard.apk
}

mount -o rw,remount /system

list_files | while read FILE DUMMY; do
	rm "/system/app/$FILE"
done

pm clear com.mitsubishielectric.ada.app.dalauncher

rm -Rf /data/dalvik-cache/*

reboot recovery
