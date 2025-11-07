# 🛒 ShopX

ShopX is an online shopping app that allows users to explore, compare, and buy products easily from different categories — all in one place.

## 🛠️ Tech Stack :

🔹 Firebase Authentication – Secure login & signup management

🔹 Firebase Firestore – Cloud database for storing and fetching app data

🔹 Firebase Storage – For uploading and managing product images

🔹 BLoC (Cubit) – State management for predictable, reactive UI updates

🔹 SharedPreferences – Local storage for user sessions and preferences

## 🚀 Features :

✅ Login / Signup with Firebase Authentication

🔐 Secure Authentication with Firebase Tokens

🧠 Auto Login with Local Storage

👤 Profile View & Update

🛍️ Fetching and Displaying Product Data from Firebase Firestore

🏗️ Modular, Scalable Architecture

📁 Clean and Scalable Folder Structure

📱 Responsive UI and Reusable Widgets

💡 Perfect Walkthrough for Flutter Beginners

## 📂 Project Structure :

```
lib/
├── core/
│   ├── constants/
│   ├── utils/
│   ├── widgets/
│   └── theme/
│
├── features/
│   └── home/
│       ├── cubit/
│       │   ├── home_cubit.dart
│       │   └── home_states.dart
│       ├── data/
│       │   ├── models/
│       │   └── repositories/
│       ├── screens/
│       └── widgets/
│
└── main.dart
