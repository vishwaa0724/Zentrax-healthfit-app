<div align="center">
  <img src="assets/logo.jpeg" alt="ZENTRAX Logo" width="150" />
  <h1>ZENTRAX Step Tracker App</h1>
  <p><em>Your personal health & fitness companion, built with Flutter.</em></p>
</div>

---

## Overview

**ZENTRAX** is a lightweight and powerful Flutter app that helps you track your daily steps using your phone's built-in motion sensors. With a sleek UI and live tracking, it motivates users to stay active, healthy, and productive.

---

Features

- Step Tracking with real-time updates  
- Visual step count updates using StreamBuilder  
- Native Android integration (Activity Recognition)
- Battery-friendly operation  
- Modular, clean, and well-documented code  
- Modern and responsive UI design  

---
Tech Stack

- [Flutter](https://flutter.dev)  
- Dart  
- `pedometer` package  
- Material UI Components  
- Android Native Permissions  

---

Setup & Installation

1. **Clone the Repository**
   ```bash
   git clone https://github.com/vishwaa0724/zentrax.git
   cd zentrax-step-tracker
   ```

2. **Install Dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the App**
   ```bash
   flutter run
   ```

---

Android Permissions

Be sure to add these permissions in `AndroidManifest.xml`:

```xml
<uses-permission android:name="android.permission.ACTIVITY_RECOGNITION"/>
<uses-permission android:name="android.permission.BODY_SENSORS"/>
```
---

License

This project is licensed under the **MIT License**. See the [`LICENSE`](LICENSE) file for more information.

---

Author

Developed with ❤️ by **[Vishwaa Jagadeesan](https://github.com/vishwaa0724)**  
Founder of [Proximony]