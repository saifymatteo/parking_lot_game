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

### Web

```bash
flutter build web --release --wasm --verbose
cp "./build/web" "./build/deploy/Parking-Lot-Game-v0.0.0-Web/" --recursive -f
```

### Android

```bash
flutter build apk --release --verbose
cp "./build/app/outputs/flutter-apk/app-release.apk" "./build/deploy/Parking-Lot-Game-v0.0.0-Android.apk" --recursive -f
```

### Windows

```bash
flutter build windows --release --verbose
cp "./build/windows/x64/runner/Release" "./build/deploy/Parking-Lot-Game-v0.0.0-Windows/" --recursive -f
```
