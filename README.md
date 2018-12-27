# Lokales

I'm creating this app because:
1. I wanted to have all the information that I use to chase the wind in one place
2. Learn Flutter
3. Help the local kitesurfing community

## Getting Started

For help getting started with Flutter, view our online
[documentation](https://flutter.io/).

## Icon
I'm not a graphic desginer, but the app needs to have a logo. One of the appraches is to harness the golden ratio to design the icon:
* Idea explained, chapter 5: https://www.canva.com/learn/what-is-the-golden-ratio/
* How to do it: https://www.youtube.com/watch?v=1hhAXrxVMeU
* Nice utility tool that generates icons based on a template: https://pub.dartlang.org/packages/flutter_launcher_icons

## Architecture
Great page: https://github.com/brianegan/flutter_architecture_samples

The app is really simple and the first iteration was based on "Lifting state up" approach,
so only no additional libs were used. This was a mistake, even for the simplest app as mine, 
passing state to widgets is more complex then it should be. I couldn't explain it better: https://www.youtube.com/watch?v=zKXz3pUkw9A&t.

## Redux
I decided to use Redux https://github.com/johnpryan/redux.dart instead. Mainly due to the fact, that I know it as I use it in professional Web projects. If you don't know it, I strongly recommend at least reading about the concept: https://redux.js.org/introduction and if it solves your problem https://daveceddia.com/what-does-redux-do/.

I was surprised with the low popularity of the project. From github: Dart 171 stars, .Net 564 stars(not maintained anymore), JS 44,268 stars. 

Pros:
* it works :)
* logging, thunk, epics
* selector memoization (to be verified)
* state persistance (to be verified)

Cons
* FlutterRedux https://pub.dartlang.org/packages/flutter_redux 
  * Wiring state change to a widget, takes so much fuss ... If you compare it to e.g. angular + ngrx it's much simpler there. 
  * The other thing is that using the store provider I was able to get the store exactly of type Store<AppState> only. If the AppState was of type ISubState, I was not able to get the Store<ISubState>. The store is being passed using InheritedWidget https://docs.flutter.io/flutter/widgets/InheritedWidget-class.html and it's prbably its constraint.
TODO: analyze the topic deeper


### Tools
* Redux Dev tools for dart https://github.com/brianegan/redux_dev_tools. A small project maintained by one guy.
* Flutter dev tools https://github.com/brianegan/flutter_redux_dev_tools. A small project maintained by one guy. A simple widget with limited capabilities. Time travel, state snapshot review (based on toString), reset, recomputation. Its functaionlity is limited and it can be more of a toy then a tool for dev
* Redux remote dev tools https://pub.dartlang.org/packages/redux_remote_devtools It has the most important feature that enables to track actions and state changes. IT's possible to do time travel. One thing needs to be mentioned it requires bot actions and state to be JSON serializable. 

## Json serialization
This is so cumbersome ... You need to take care of the serialization by yourself, there are tools that can help and generate much of the code but still it takes time. The tool I used is https://pub.dartlang.org/packages/json_serializable. In the official docs https://flutter.io/docs/development/data-and-backend/json one of the mentioned way is to use manual serialization, don't go this way ;)

Here there is a nice summary of the options: https://medium.com/flutter-io/some-options-for-deserializing-json-with-flutter-7481325a4450

## Ui

### Custom icons
* https://medium.com/flutterpub/how-to-use-custom-icons-in-flutter-834a079d977
* http://fluttericon.com
  NOTE: I wasn't able to import the logo svg correctly to the flutter icons generator. I used http://app.fontastic.me first, and then I imported the generated font to the flutter generator

### Misc
* Transparent appbar https://github.com/flutter/flutter/issues/17088
* Null values in widget collections: https://github.com/flutter/flutter/issues/17862

## Missing features

* No auto-import in vscode
* No union types https://github.com/dart-lang/sdk/issues/4938

## TODO
- [ ] Unit tets
- [ ] Replace static map card with dynamic_map
- [ ] Do something about description id
- [ ] Redux based navigation
- [ ] When keys should be used 
- [ ] Redux code genearators
- [ ] use reselect https://pub.dartlang.org/packages/reselect
- [ ] use persist https://github.com/Cretezy/redux_persist
- [ ] Analyze the package: https://github.com/google/built_value.dart
- [ ] Find a way to keep the genrated code out of the main src
- [ ] Android adaptive icons