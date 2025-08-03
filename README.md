# Parking Lot Game Challenge

![Parking Lot Game](https://raw.githubusercontent.com/saifymatteo/parking_lot_game/master/github/assets/main.jpg)

A simple game for imaginary parking lot. Enter your desired parking size and click away to fill it up!

This game was originally a challenge to build a simple game by [Mihail Gaberov](https://www.freecodecamp.org/news/parking-lot-challenge-solved-in-javascript/).

<a href='https://play.google.com/store/apps/details?id=com.saifymatteo.parking_lot_game&pcampaignid=pcampaignidMKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1'><img alt='Get it on Google Play' src='https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png' width=300/></a>

## Downloads

You can try the [web version](https://parking.game.saifulmashuri.com/) of the game or just download it from [release tab](https://github.com/saifymatteo/parking_lot_game/releases/latest)

## Technology

- Flutter: `3.32.8`
- Dart: `3.8.1`

## Compiles

### Pre-requisite

Use PowerShell with YAML module

```PowerShell
Install-Module -Name powershell-yaml
Import-Module powershell-yaml
```

### Builds

```PowerShell
# Create folder
New-Item -Path ".\build\deploy" -ItemType Directory -Force

# Get pubspec
$content = Get-Content -Path "./pubspec.yaml" -Raw
$pubspec = ConvertFrom-Yaml -Yaml $content

# Web
flutter build web --release --wasm --verbose
Compress-Archive -Path ".\build\web\*" -DestinationPath ".\build\deploy\Parking-Lot-Game-v$($pubspec.version)-Web.zip" -Force

# Android APK
flutter build apk --release --verbose
Copy-Item -Path ".\build\app\outputs\flutter-apk\app-release.apk" -Destination ".\build\deploy\Parking-Lot-Game-v$($pubspec.version)-Android.apk" -Force -Recurse

# Android App Bundle
flutter build appbundle --release --verbose
Copy-Item -Path ".\build\app\outputs\bundle\release\app-release.aab" -Destination ".\build\deploy\Parking-Lot-Game-v$($pubspec.version)-Android.aab" -Force -Recurse

# Windows
flutter build windows --release --verbose
Compress-Archive -Path ".\build\windows\x64\runner\Release\*" -DestinationPath ".\build\deploy\Parking-Lot-Game-v$($pubspec.version)-Windows.zip" -Force
```
