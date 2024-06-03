# code_test

Code test - Shoesly
Flutter version 3.19.6


## Project Setup Instructions

Follow these steps to set up and run the project on your local machine:

1. **Clone the Repository:**
    ```bash
    git clone https://github.com/Aej75/shoesly-ajay.git
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

1. **Brand Images:** All brand images are in PNG format.
2. **User Authentication:** Firebase Anonymous Sign-In is used for managing user authentication.
3. **Product Gender:** Products are designed for a specific gender or as unisex.
4. **Color Options:** Products have multiple color options available.
5. **Cart Selection:** Color and size must be selected when adding products to the cart.
6. **Price Range:** The maximum product price is $1750.
7. **Checkout Process:** All items in the cart can be checked out at once; partial checkout is not supported.
8. **Address and Payment:** Address and payment features are not implemented.

## Challenges Faced and Solutions

1. **Color Filter for Images:**
    - **Challenge:** Handling different color representations and formats.
    - **Solution:** Implemented a custom image filter with the `ColorFiltered` widget.

2. **Firebase Configuration:**
    - **Challenge:** Configuring Firebase for both Android and iOS.
    - **Solution:** Used the FlutterFire CLI for consistent setup across platforms.

3. **Firebase Database dummy data:**
    - **Challenge:** Hassle to add data in firebase.
    - **Solution:** Used custom service to populate data in database.


## Additional Features and Improvements

1. **State Management:** Implemented using Flutter Bloc for better scalability and maintainability.
2. **UI/UX Enhancements:** Improved user interface with custom widgets and shimmers and splash screen.
3. **Database Seeder:** Added a service to populate data for  products, brands and reviews into the database.
3. **Local Notification:** Added a local notification service to notify user on the succesful order placement.

---

For any further assistance or queries, feel free to reach out to the project maintainer.
