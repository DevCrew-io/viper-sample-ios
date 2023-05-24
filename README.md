# viper-sample-ios
A sample iOS application showcasing the VIPER (View-Interactor-Presenter-Entity-Router) architecture pattern. This project serves as a starting point for building modular, scalable, and maintainable iOS applications using VIPER. 

**Viper Sample Project**

Welcome to the Viper Sample Project! This project serves as a demonstration and example of how to use the Viper architecture in your iOS application. Viper is an architectural pattern that promotes clean separation of concerns and improves maintainability and testability of your codebase.

**Table of Contents**

* Introduction\
* Features\
* Requirements\
* Installation\
* Usage\
* Folder Structure

**Introduction**

The Viper Sample Project showcases a simple iOS application implemented using the Viper architecture. It demonstrates the separation of concerns and the interaction between different components of the Viper pattern, such as the View, Presenter, Interactor, and Router.

**Features**

This sample project includes the following features:

* Sign in with firebase\
* Sign up with firebase \
* News list\
* News detail

Feel free to explore and modify the code to suit your needs.

**Requirements**

To run the Viper Sample Project, you need:

* Xcode 11.0 or later\
* Swift 5.0 or later\
* iOS 11.0 or later

**Installation**

1. Clone the repository:

```
git clone https://github.com/DevCrew-io/viper-sample-ios
```

2. Open the project in Xcode:
```
cd ViperDemo
open ViperDemo.xcodeproj
```
3. Build and run the project using the Xcode simulator or a connected device.

**Usage**

The Viper Sample Project provides a basic user interface for authentication, profile management, and todo list management. You can explore the different screens and interact with them to understand how the Viper components work together.

**Folder Structure**


The folder structure of the project follows the Viper architecture pattern:

<img width="971" alt="Screenshot 2023-05-24 at 12 10 53 PM" src="https://github.com/DevCrew-io/viper-sample-ios/assets/133848606/0b421c5a-9428-4dec-8d1f-8cc698a6cf2b">

* Each module (e.g., Login, Signup, NewsList,NewsDetail) has its own folder containing the View, Presenter, Interactor, Router, and Entity components.
* The Shared folder contains shared code, such as utility classes, extensions, and services, that can be used across multiple modules.


Feel free to add or modify modules and their components based on your project requirements.




