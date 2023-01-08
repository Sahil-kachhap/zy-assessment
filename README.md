# employee_app

Mobile App where user can register as employee and view other employees on another screen. On the employee list screen, employees working for more than 5 years have been flagged with green color.

## Register Screen
![WhatsApp Image 2023-01-08 at 11 48 15 PM](https://user-images.githubusercontent.com/54017876/211212337-9b60e19b-9aab-4943-abed-c1ff6e12d291.jpeg)

## Employee List Screen
![WhatsApp Image 2023-01-08 at 11 48 14 PM](https://user-images.githubusercontent.com/54017876/211212316-d4503f55-525e-4929-94eb-59c2e6f2b9e9.jpeg)

## Firestore Database
![firebase](https://user-images.githubusercontent.com/54017876/211212538-691258ca-a50f-4dbb-b39b-4baa58d4ee91.png)

## Some Terminology to understand the folder structure:
1. bloc folder - it encapsulates all the bloc related files and folders.

2. entity folder - basically entity is a subtype of model class. For eg:- A employee(model) has a number of attributes but while showcasing a employee on the screen
(in the employee list screen), I am just interested in few of those attributes (here - name, email and years of experience). So, entity comes out handy to work with 
during this usecase.

3. usecases folder:- As the folder name suggests, this folder encapsulates files having some logical work to do during the flow of the application. But wait, you would say that for what we used bloc(state management) right? Well you are correct, I have encapsulated all the work in usecases so that all of our app logic doesn't gets cluttered in bloc files and our app gets tightly bounded with bloc files. Since, now our app logic resides in usecase folder, We are free to switch between any state management solutions.
![bloc](https://user-images.githubusercontent.com/54017876/211213750-b455e403-279b-4ddc-a19d-b6f67a2a1713.jpg)






## Tech Stack: Flutter, Dart, BLOC (state management), Firebase (as backend)


## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
