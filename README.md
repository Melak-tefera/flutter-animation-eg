# flutter-animation-eg
# Flutter Animation & Responsive UI Playground

A beginner-friendly Flutter project for practicing animations, gestures, navigation, responsive layouts, and reusable UI components. The repository contains several small demonstrations that can be selected as the app's home screen from `main.dart`.

## Features

- Implicit animations with `AnimatedContainer`
- Explicit animations with `AnimationController`, `Tween`, and `AnimatedBuilder`
- Tween-based animations with `TweenAnimationBuilder`
- Rotation animations controlled by touch gestures
- Hero animations between screens
- Scrollable wheel selector using `ListWheelScrollView`
- Phone-call history list using `ListView.builder`
- Responsive layouts for phone and desktop/tablet screen sizes
- Material 3 theme with a Deep Purple color scheme
- Asset-based image navigation example

## Project demonstrations

### Basic animation
The `HomePage` screen demonstrates two animation styles:

- A continuously rotating notification icon that pauses while the user presses it.
- An `AnimatedContainer` that changes size, color, and border radius when tapped.

### Explicit animation
`AnimationDemoPage` uses an `AnimationController` and `AnimatedBuilder` to animate a Flutter icon between two sizes. The floating action button starts the animation or reverses it after completion.

### Tween animation builder
`ExplicitTweenBuilder` demonstrates how `TweenAnimationBuilder` can animate a widget without manually creating an `AnimationController`.

### Hero animation
`HeroAnimation` displays an image and navigates to `Detailpage` with a Hero transition. The image used by this example must be included in the project's assets.

### Wheel animation
`Otheranimation` contains a curved, scrollable number selector built with `ListWheelScrollView.useDelegate`.

### Phone list
`Phonenumber` displays sample call-history data using `ListView.builder`, `ListTile`, icons, and unread-count badges.

### Responsive design
`Homepage8` uses `LayoutBuilder` to select a phone or desktop layout:

- Screens narrower than 600 pixels show `Phonebody`.
- Screens 600 pixels or wider show `Desctopbody`.

The desktop layout places the main content beside a 200-pixel sidebar, while the phone layout uses a single vertical column.

## Technologies

- Flutter
- Dart
- Material 3
- `AnimationController`
- `Tween` and `ColorTween`
- `AnimatedContainer`
- `AnimatedBuilder`
- `TweenAnimationBuilder`
- `Hero`
- `LayoutBuilder`
- `ListView.builder`
- `ListWheelScrollView`

## Getting started

### Prerequisites

Install the following tools before running the project:

- Flutter SDK
- Dart SDK included with Flutter
- Android Studio, VS Code, or another Flutter-compatible editor
- An Android emulator, iOS simulator, or physical device

Verify your Flutter installation:

```bash
flutter doctor
```

### Installation

1. Clone the repository:

```bash
git clone https://github.com/YOUR_USERNAME/YOUR_REPOSITORY.git
```

2. Move into the project directory:

```bash
cd YOUR_REPOSITORY
```

3. Install Flutter dependencies:

```bash
flutter pub get
```

4. Run the application:

```bash
flutter run
```

## Selecting a demonstration

The active screen is configured in `lib/main.dart` using the `home` property of `MaterialApp`:

```dart
home: Homepage8(),
```

To test another screen, import its file and replace the value of `home`:

```dart
home: AnimationDemoPage(),
```

Other available examples include:

```dart
home: HomePage();
home: ExplicitTweenBuilder();
home: HeroAnimation();
home: Otheranimation();
home: Phonenumber();
home: Tweenanimation2();
home: Homepage8();
```

Use `const` where possible:

```dart
home: const AnimationDemoPage(),
```

## Suggested project structure

```text
lib/
├── main.dart
└── pages/
    ├── detailpage.dart
    ├── homepage.dart
    ├── homepage2.dart
    ├── homepage3.dart
    ├── homepage4.dart
    ├── homepage5.dart
    ├── homepage6.dart
    ├── homepage7.dart
    └── responsive_design/
        ├── desctopbody.dart
        ├── homepae.dart
        ├── phonebody.dart
        └── resonsive.dart
assets/
└── images/
    └── user.png
```

> Rename files such as `desctopbody.dart`, `resonsive.dart`, and `homepae.dart` if you want to follow standard spelling. Renaming them also requires updating their import statements.

## Adding the image asset

The Hero example expects this file:

```text
assets/images/user.png
```

Register the asset in `pubspec.yaml`:

```yaml
flutter:
  uses-material-design: true
  assets:
    - assets/images/user.png
```

Then run:

```bash
flutter pub get
```

## Important implementation notes

- Call `super.initState()` at the beginning of every `initState` method.
- Dispose every `AnimationController` in `dispose()` to prevent resource leaks.
- A `StatefulWidget` is required when animation or interaction changes the widget's state.
- Avoid placing `Expanded` directly inside `Scaffold.body`; `Expanded` must be a child of a `Row`, `Column`, or `Flex`.
- In the desktop layout, the `Row` should be the direct body of the `Scaffold`, rather than wrapping the body with `Expanded`.
- Use `const` constructors and widgets when their values do not change.
- Keep the screen-width breakpoint in one place so responsive behavior stays consistent.

## Learning goals

This project is useful for practicing:

- The difference between implicit and explicit animations
- Animation controllers and animation lifecycles
- Widget rebuilding and `setState`
- Gesture callbacks such as `onTap`, `onTapDown`, and `onTapUp`
- Navigation with `Navigator.push`
- Responsive UI composition
- Flutter layout constraints
- Building small, testable UI demonstrations

## Future improvements

- Add a home screen that lets users select each demonstration.
- Replace sample phone data with a typed Dart model.
- Add accessibility labels and semantic widgets.
- Add screen-size and widget tests.
- Improve desktop scrolling and sidebar navigation.
- Add real video thumbnails or a video player to the responsive layouts.
- Add dark-mode support and persisted theme settings.
- Add screenshots or a short demo video to the repository.

## Contributing

1. Create a feature branch:

```bash
git checkout -b feature/your-feature
```

2. Make and test your changes:

```bash
flutter analyze
flutter test
```

3. Commit your work:

```bash
git add .
git commit -m "Add your change description"
```

4. Push the branch and open a pull request.

## License

Add a license before publishing the project for reuse. The MIT License is a common choice for learning projects, but choose the license that matches your goals.

## Author

**Meleak Tefera**

Flutter and Dart learner focused on practical mobile application development, UI experimentation, and responsive design.
