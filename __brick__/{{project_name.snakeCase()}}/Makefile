
### Useful commands



build-ipa-prod:
	$(eval version=$(shell grep -m 1 'version:' pubspec.yaml | awk '{print $$2}'| cut -d '+' -f 1))
	fvm flutter build ipa --obfuscate --split-debug-info=misc/mapping/${version} --target lib/main_production.dart --flavor production --dart-define-from-file="env/config/app-config-prod.json"

build-apk-prod:
	fvm flutter build apk --split-debug-info --obfuscate --split-debug-info=build/app/outputs/symbols --flavor production --target lib/main_production.dart --dart-define-from-file="env/config/app-config-prod.json"

build-appbundle-prod:
	fvm flutter build appbundle --obfuscate --split-debug-info=build/app/outputs/symbols --flavor production --target lib/main_production.dart --dart-define-from-file="env/config/app-config-prod.json"


build-ipa-stg:
	fvm flutter build ipa --dart-define-from-file="env/config/app-config-stg.json" --target lib/main_staging.dart --flavor staging

build-apk-stg:
	fvm flutter build apk --obfuscate --split-debug-info=build/app/outputs/symbols --flavor staging --target lib/main_staging.dart --dart-define-from-file="env/config/app-config-stg.json"

build-appbundle-stg:
	fvm flutter build appbundle --obfuscate --split-debug-info=build/app/outputs/symbols --flavor staging --target lib/main_staging.dart --dart-define-from-file="env/config/app-config-stg.json"


clean:
	 ./scripts/clean.sh
fetch:
	 ./scripts/fetch.sh
format:
	./scripts/format.sh
gen_code:
	./scripts/gen_code.sh

gen_l10n:
	./packages/internationalization/scripts/gen_l10n.sh

# Generate assets for the app in the ui package then run the gen_icon.sh script for generating the app icon dart files
gen_assets:
	./packages/{{project_name}}_ui/scripts/gen_assets.sh

gen_code_rewrite:
	./scripts/gen_code.sh rewrite

gen_app_code:
	fvm dart run build_runner build

gen_app_code_rewrite:
	fvm dart run build_runner build --delete-conflicting-outputs

prepare: fix format

test-all: 
	./scripts/test.sh
test-update: 
	./scripts/test_update.sh

reset: clean fetch gen_code_rewrite  gen_l10n

fix:
	fvm dart fix --apply

upgrade:
	fvm flutter pub upgrade --major-versions


## Native UI configuration

splash:
	fvm flutter pub run flutter_native_splash:create

icon:
	fvm flutter pub run flutter_launcher_icons:main

## Clean up iOS folder

pods:
	cd ios && rm -rf Podfile.lock && pod install && pod update && cd ..

pub_get:
	fvm flutter pub get

run_dev:
	fvm flutter run --flavor development --target lib/main_development.dart --dart-define-from-file="env/config/app-config-stg.json"

run_stg:
	fvm flutter run --flavor staging --target lib/main_staging.dart --dart-define-from-file="env/config/app-config-stg.json" -d emulator-5554  

run_prod:
	fvm flutter run --flavor production --target lib/main_production.dart --dart-define-from-file="env/config/app-config-prod.json"

ui_build:
	cd packages/chapar_pay_ui/ && fvm flutter pub get && fvm flutter pub run build_runner build --delete-conflicting-outputs

install_prod:
	fvm flutter install --device-id RZCW30V1YEF --release   

install_stg:
	fvm flutter install --device-id RZCW30V1YEF --staging   

{{#graphql}}
update_schema:
	cd packages/core && get-graphql-schema https://api.highend.app/graphql > lib/src/graphql/schema.graphql && cd ../..
{{/graphql}}

open_xcode:
	cd ios && open Runner.xcworkspace

## Firebase settings
firebase_conig_dev:
	flutterfire config \
  --project={{project_name.paramCase()}}-dev \
  --out=packages/core/lib/src/firebase/firebase_options_dev.dart \
  --ios-bundle-id={{org_name}}.{{application_id}}.dev \
  --android-app-id={{org_name}}.{{application_id}}.dev

firebase_conig_stg:
	flutterfire config \
  --project={{project_name.paramCase()}}-stg \
  --out=packages/core/lib/src/firebase/firebase_options_stg.dart \
  --ios-bundle-id={{org_name}}.{{application_id}}.stg \
  --android-app-id={{org_name}}.{{application_id}}.stg

firebase_conig_prod:
	flutterfire config \
  --project={{project_name.paramCase()}} \
  --out=packages/core/lib/src/firebase/firebase_options.dart \
  --ios-bundle-id={{org_name}}.{{application_id}} \
  --android-app-id={{org_name}}.{{application_id}}


upload_dSYM:
	firebase crashlytics:symbols:upload --app=FIREBASE_APP_ID PATH/TO/symbols