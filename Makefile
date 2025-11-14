SHELL := /bin/bash

all: install

# Builds a release version of the Android app.
build-android:
	flutter build aab --release

# Builds a debug version of the Android app.
build-android-debug:
	flutter build aab --debug

# Builds a release version of the iOS app.
build-ios:
	flutter build ios --release

clean:
	fluter clean

# Generates translation files from the source .arb files.
generate-translations:
	flutter gen-l10n

# Installs Flutter dependencies and initializes Husky's git hooks.
install:
	flutter pub get
	dart run husky install # initializes husky

# Runs the Flutter app on the default target device.
run:
	flutter run
