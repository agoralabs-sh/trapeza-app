SHELL := /bin/bash

.PHONY: test
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

# Builds a release version of the iOS app but with no code-siging.
build-ios-debug:
	flutter build ios --release --no-codesign

clean:
	fluter clean

# Generates translation files from the source .arb files.
generate-translations:
	flutter gen-l10n

# Lints the Dart code.
lint:
	flutter analyze

# Installs Flutter dependencies and initializes Husky's git hooks.
install:
	flutter pub get
	dart run husky install # initializes husky

# Runs the Flutter app on the default target device.
run:
	flutter run

# Runs unit tests.
test:
	flutter test
