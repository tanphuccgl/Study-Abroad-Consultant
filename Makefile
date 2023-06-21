
clean: 
	@echo "$ Cleaning the project"
	@rm -rf pubspec.lock
	@flutter clean && flutter pub get
get:
	dart pub get
format:
	dart format .
lint:
	dart analyze
runner: 
	flutter packages pub run build_runner build
pod:
	pod update --project-directory=ios && pod install --project-directory=ios
signingReport:
	cd android && ./gradlew signingReport && cd ..
pull:
	git checkout main && git fetch && git pull levi main
# keytool -list -v -keystore android/app/release-keystore.jks -alias <key alias>





