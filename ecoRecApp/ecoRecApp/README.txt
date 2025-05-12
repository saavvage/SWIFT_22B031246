🌱 ecoRecApp
ERA stands for eco-recycle-application.
ecoRecApp is an iOS application designed to display waste collection points on a map and help users with waste
recycling.
The app uses Firebase Firestore to store information about the collection points and Firebase Auth for user
registration and authentication.

📱 Key Features
🔐 Sign up and login using Firebase Authentication

🗺️ Map of waste collection points (MapKit + Firestore)

🔎 Filter collection points by waste type

🧭 Navigation using SwiftUI and NavigationView

☁️ Integration with Firebase Firestore and Firebase Authentication

💚 Clean and intuitive user interface

🛠️ Install Dependencies via Swift Package Manager
The project uses SwiftPM. Make sure the following packages are added to Package Dependencies:

    1.Firebase
    2.FirebaseAuth
    3.FirebaseFirestore
    4.FirebaseCore

Alternatively, you can add Firebase manually via URL:
https://github.com/firebase/firebase-ios-sdk.git

🔧 Firebase Setup
    1.Go to https://console.firebase.google.com and create a new project.
    2.Add a new iOS app using your bundle identifier (e.g., com.yourname.ecoRecApp).
    3.Download the GoogleService-Info.plist file and drag it into the root of your Xcode project.
    4.Make sure the file is added to your app’s Target Membership.

