# Product Navigation App

## Description
Product Navigation App is a simple Flutter application that demonstrates navigation between screens while displaying a list of products and their details.

The application contains a product list screen where users can view available products and a product details screen that displays more information about a selected product.

## Features

- Display a list of products
- Custom product cards
- Navigate to product details screen
- Show product name, description, price, and rating icons
- Color-coded product previews

## Project Structure

```
lib/
│
├── models/
│   └── product.dart
│
├── widgets/
│   └── product_card.dart
│
├── screens/
│   ├── product_list_screen.dart
│   └── product_details_screen.dart
│
└── main.dart
```

## Files Overview

### product.dart
Contains the `Product` model class used to store product information.

### product_card.dart
Creates reusable product cards used in the product list screen.

### product_list_screen.dart
Displays all products using a `ListView.builder()` and handles navigation to the details screen.

### product_details_screen.dart
Displays detailed information about the selected product.

### main.dart
Application entry point that loads the Product List Screen.

## Products Included

- Pixel 1
- Laptop
- Tablet
- Pendrive
- Floppy Drive

## Navigation

The app uses Flutter's Navigator:

```dart
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => ProductDetailsScreen(
      product: products[index],
    ),
  ),
);
```

Users can tap a product card to view its details and use the back button to return to the product list.

## Technologies Used

- Flutter
- Dart
- Material Design Widgets

## Learning Objectives

This project demonstrates:

- Flutter project structure
- Stateless widgets
- Custom widgets
- Lists and ListView.builder
- Navigation using Navigator.push()
- Passing data between screens
- UI layout with Row, Column, Container, and Card widgets
