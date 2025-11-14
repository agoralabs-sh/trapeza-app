SHELL := /bin/bash

all: install

build-android:
	flutter build aab --release

build-android-debug:
	flutter build aab --debug

build-ios:
	flutter build ios --release

clean:
	fluter clean

generate-translations:
	flutter gen-l10n

install:
	flutter pub get

run:
	flutter run
