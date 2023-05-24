# viper-sample-ios
A sample iOS application showcasing the VIPER (View-Interactor-Presenter-Entity-Router) architecture pattern. This project serves as a starting point for building modular, scalable, and maintainable iOS applications using VIPER. 

![Minimalist Family Three Photo Collage](https://github.com/DevCrew-io/viper-sample-ios/assets/133848606/e416e38d-304f-4da1-846d-45e980d25c35)



### VIPER Presentation

Welcome to the Viper Sample Project! Check out our [VIPER Presentation](https://docs.google.com/presentation/d/1CLkYtdmFPOunOoAtyynrFPWZEWtufwTKUiYKKdjTScI/edit?usp=sharing) for a  walkthrough of the architecture and features.


### Table of Contents

* Introduction
* Features
* Requirements
* Installation
* Usage
* Folder Structure

### Introduction

The Viper Sample Project showcases a simple iOS application implemented using the Viper architecture. It demonstrates the separation of concerns and the interaction between different components of the Viper pattern, such as the View, Presenter, Interactor, and Router.

### Features

This sample project includes the following features:

* Sign in with firebase
* Sign up with firebase 
* News list
* News detail

Feel free to explore and modify the code to suit your needs.

### Requirements

To run the Viper Sample Project, you need:

* Xcode 11.0 or later
* Swift 5.0 or later
* iOS 11.0 or later

### Installation

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

### Usage

The Viper Sample Project provides a basic user interface for authentication, profile management, and todo list management. You can explore the different screens and interact with them to understand how the Viper components work together.

### Folder Structure


The folder structure of the project follows the Viper architecture pattern:

<img width="971" alt="Screenshot 2023-05-24 at 12 10 53 PM" src="https://github.com/DevCrew-io/viper-sample-ios/assets/133848606/0b421c5a-9428-4dec-8d1f-8cc698a6cf2b">

* Each module (e.g., Login, Signup, NewsList,NewsDetail) has its own folder containing the View, Presenter, Interactor, Router, and Entity components.
* The Shared folder contains shared code, such as utility classes, extensions, and services, that can be used across multiple modules.


### Dependencies

[Swift Package Manager](https://www.swift.org/package-manager/) is used as a dependency manager. List of dependencies:

[Alamofire](https://github.com/Alamofire/Alamofire) -> Networking library used for https request.\
[Kingfisher](https://github.com/onevcat/Kingfisher) -> A lightweight, pure-Swift library for downloading and caching images from the web.\
[PKHUD](https://github.com/pkluz/PKHUD) -> A Swift based reimplementation of the Apple HUD (Volume, Ringer, Rotation,…).\
[Firebase](https://firebase.google.com/)-> Used for authentication.


## Author

[DevCrew.IO](https://devcrew.io/)

If you have any questions or comments about Nested Collection View, please feel free to contact us at info@devcrew.io.

<h3 align="left">Connect with Us:</h3>
<p align="left">
<a href="https://devcrew.io" target="blank"><img align="center" src="https://devcrew.io/wp-content/uploads/2022/09/logo.svg" alt="devcrew.io" height="35" width="35" /></a>
<a href="https://www.linkedin.com/company/devcrew-io/mycompany/" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/linked-in-alt.svg" alt="mycompany" height="30" width="40" /></a>
<a href="https://github.com/DevCrew-io" target="blank"><img align="center" src="https://cdn-icons-png.flaticon.com/512/733/733553.png" alt="DevCrew-io" height="32" width="32" /></a>
</p>


## Contributing 
Contributions, issues, and feature requests are welcome! See [Contributors](https://github.com/DevCrew-io/viper-sample-ios) for details.

### Show your Support

Give a star if this project helped you.

### Copyright & License

Code copyright 2023 DevCrew I/O. Code released under the [MIT license](https://github.com/DevCrew-io/expandable-richtext/blob/main/LICENSE).




