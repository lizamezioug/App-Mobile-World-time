
# 🌍 World Time App – Flutter Mobile Application

A **Flutter mobile app** that displays the **current time in different countries in real time**, dynamically switching **day/night backgrounds** and allowing the user to **choose a country** to see its local time.

---

## 📌 Features

* Real-time clock for multiple countries 🌐
* Dynamic **day/night backgrounds**
* Select a country from a menu
* Smooth loading animations
* User-friendly, responsive mobile UI

---

## 🛠️ Technologies & Tools

| Technology                                                                                        | Usage                            |
| ------------------------------------------------------------------------------------------------- | -------------------------------- |
| ![Flutter](https://img.shields.io/badge/Flutter-02569B?style=flat\&logo=flutter\&logoColor=white) | Mobile application development   |
| ![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat\&logo=dart\&logoColor=white)          | Programming language for Flutter |
| ![HTTP](https://img.shields.io/badge/HTTP-Package-blue?style=flat)                                | Fetching time data from API      |
| ![Intl](https://img.shields.io/badge/Intl-Package-blue?style=flat)                                | Formatting date and time         |
| ![Flutter Spinkit](https://img.shields.io/badge/Flutter_Spinkit-Package-blue?style=flat)          | Loading animations               |

---

## 🏗️ Project Structure

```
lib/
 ├─ main.dart               # Entry point & route configuration
 ├─ pages/
 │   ├─ loading.dart        # Loading screen with spinner
 │   ├─ home.dart           # Main screen displaying the time
 │   └─ choose_location.dart # Country selection screen
 └─ services/
     └─ world_time.dart     # Handles API calls & time calculations
assets/
 └─ flags/                  # Country flags images
 └─ day.png / night.png      # Backgrounds for day/night
```

---

## 🚀 How to Run

### Prerequisites

* Flutter installed (latest stable version)
* Android Studio 
* Physical device or emulator (Android/iOS)

### Steps

1. Clone the repository:

```bash
git clone <your-repo-url>
cd world_time_app
```

2. Get dependencies:

```bash
flutter pub get
```

3. Run the app on an emulator or connected device:

```bash
flutter run
```

> The app launches with a **loading screen**.
> Select a country to view its local time. Backgrounds update automatically for day/night.

---

## 💡 How It Works

* The app fetches **real-time time data** from `worldtimeapi.org`.
* `WorldTime` service calculates local time and determines day or night.
* **Home screen** displays the time and adjusts the background accordingly.
* **Choose Location screen** allows selecting a country and updates the main screen instantly.

---

## 🎨 UI & UX

* **Loading screen** with spinner animation
* **Dynamic backgrounds** for day/night
* **Intuitive navigation** between screens
* **Mobile-first responsive design**


