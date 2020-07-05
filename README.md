# CoreDataPublisher

Combine Publisher for CoreData Entities

## Introduction

Use this Publisher to monitor changes to CoreData entities to drive the application from the data layer. In SwiftUI this is achieved by using the `@FetchedResults`-Property Wrapper, but when this type of functionality is required outside the view layer or when using UIKit, this publisher can be used. Nevertheless, this publisher can also be used with SwiftUI and view models conforming to `ObservableObject` that expose their data dynamically through `@Published`-marked properties.
Internally this publisher uses `NSFetchedResultsController` and surfaces arrays of the specified entity in expected Combine-fashion.

## Requirements

* Swift 5
* Platform with CoreData support

## Installation

Add dependency via Xcode Package Manager: `https://github.com/franzlj/CoreDataPublisher`

## Usage

`let events: AnyPublisher<[MyEntity], Never> = managedObjectContext.publisher(for: MyEntity.self)`

In practice the most common use is to create this publisher with the main / view context of the application to at some point drive view models to reactively update the user interface. This means that whenever the user oder external input changes the data (e.g. via merges of a background context), the user interface is in sync without further action.

## Next steps

* Tests
* Verify that this publisher does not leak memory / clears up strong references to contexts / entities correctly
* Add better error handling (currently we fail silently and/or with debug assertion failures)

## Licence

MIT
