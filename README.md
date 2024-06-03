# code_test

Code test - Shoesly
Flutter version 3.19.6


## Project Setup Instructions

Follow these steps to set up and run the project on your local machine:

1. **Clone the Repository:**
    ```bash
    git clone https://github.com/santoshacharya2468/shoesly
    cd shoesly
    ```

2. **Install Flutter:**
    - Follow the instructions to install Flutter from the [official documentation](https://flutter.dev/docs/get-started/install).

3. **Set Up FlutterFire:**
    - Install the FlutterFire CLI:
        ```bash
        dart pub global activate flutterfire_cli
        ```
    - Configure your Firebase project:
        ```bash
        flutterfire configure
        ```

4. **Install Dependencies:**
    ```bash
    flutter pub get
    ```

5. **Run the Application:**
    - For a specific device (e.g., iOS simulator, Android emulator):
        ```bash
        flutter run
        ```
    - To see the list of available devices:
        ```bash
        flutter devices
        ```

## Assumptions Made During Development

1. **Brand Images:** All brand images are in SVG format.
2. **User Authentication:** Firebase Anonymous Sign-In is used for managing user authentication.
3. **Product Gender:** Products are designed for a specific gender or as unisex.
4. **Color Options:** Products have multiple color options available.
5. **Cart Selection:** Color and size must be selected when adding products to the cart.
6. **Price Range:** The maximum product price is $1750.
7. **Checkout Process:** All items in the cart can be checked out at once; partial checkout is not supported.
8. **Address and Payment:** Address and payment features are not implemented.

## Challenges Faced and Solutions

1. **Filter Feature:**
    - **Challenge:** Managing multiple filter combinations in Firestore.
    - **Solution:** Used default values for unselected filters to create a single composite index.

2. **Color Filter for Images:**
    - **Challenge:** Handling different color representations and formats.
    - **Solution:** Implemented a custom image filter with the `ImageFilter` widget. Some issues with white backgrounds remain unresolved.

3. **Firebase Configuration:**
    - **Challenge:** Configuring Firebase for both Android and iOS.
    - **Solution:** Used the FlutterFire CLI for consistent setup across platforms.

4. **Cross-Platform Consistency:**
    - **Challenge:** Ensuring seamless functionality on both iOS and Android.
    - **Solution:** Regular testing on both platforms and minimal use of platform-specific code.

## Additional Features and Improvements

1. **State Management:** Implemented using Flutter Bloc for better scalability and maintainability.
2. **UI/UX Enhancements:** Improved user interface with custom widgets and animations.
3. **Database Seeder:** Added a service to seed products and reviews into the database.

---

For any further assistance or queries, feel free to reach out to the project maintainer.
