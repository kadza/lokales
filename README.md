# lokales

A new Flutter project.

## Getting Started

For help getting started with Flutter, view our online
[documentation](https://flutter.io/).

## Architecture
Great page: https://github.com/brianegan/flutter_architecture_samples

The app is really simple and the first iteration was based on "Lifting state up" approach,
so only no additional libs were used. This was a mistake, even for the simplest app as mine, 
passing state to widgets is more complex then it should be. I couldn't explain it better: https://www.youtube.com/watch?v=zKXz3pUkw9A&t.

I decided to use Redux https://github.com/johnpryan/redux.dart instead. Mainly due to the fact, that I know it as I use it in professional Web projects. If you don't know it, I strongly recommend at least reding about the concept: https://redux.js.org/introduction

First of all I was surprised with the low popularity of the project. From github: Dart 171 stars, .Net 564 stars(not maintained anymore), JS 44,268 stars. 

Redux Dev tools for dart https://github.com/brianegan/redux_dev_tools. A small project maintained by one guy.
Flutter dev tools https://github.com/brianegan/flutter_redux_dev_tools. A small project maintained by one guy. A simple widget with limited capabilities. Time travel, state snapshot review (based on toString), reset, recomputation. 


No auto-import in vscode

Json serialization
https://github.com/google/built_value.dart
https://medium.com/flutter-io/some-options-for-deserializing-json-with-flutter-7481325a4450

No union types
https://github.com/dart-lang/sdk/issues/4938

