
# Bookly

[![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)](https://flutter.dev/)

Bookly is a Flutter app that provides users with access to a curated selection of featured books and best-selling books. Users can view book details, get books for free from the Play Store, and preview books in their browser.

## Features

- **Main Screen**: Displays featured books and best-selling books.
- **Book Details**: Shows book name, authors, rating, and number of people who rated it. Provides two buttons: "Get Book for Free" and "Preview".
  - **Get Book for Free**: Navigates to the Play Store to get the book.
  - **Preview**: Opens a browser to show a preview of the book.
- **Recommendations**: Displays related books under "You May Also Like".

## Packages Used

- [cached_network_image: ^3.3.1](https://pub.dev/packages/cached_network_image)
- [cupertino_icons: ^1.0.2](https://pub.dev/packages/cupertino_icons)
- [dartz: ^0.10.1](https://pub.dev/packages/dartz)
- [dio: ^5.4.3+1](https://pub.dev/packages/dio)
- [equatable: ^2.0.5](https://pub.dev/packages/equatable)
- [flutter: sdk: flutter](https://flutter.dev/)
- [flutter_bloc: ^8.1.5](https://pub.dev/packages/flutter_bloc)
- [gap: ^3.0.1](https://pub.dev/packages/gap)
- [get_it: ^7.6.7](https://pub.dev/packages/get_it)
- [go_router: ^13.2.4](https://pub.dev/packages/go_router)
- [google_fonts: 6.1.0](https://pub.dev/packages/google_fonts)
- [url_launcher: ^6.2.6](https://pub.dev/packages/url_launcher)

## Screenshots

<div style="display: flex; flex-wrap: wrap;">
    <div style="margin: 10px;">
        <p>Main Screen</p>
        <img src="screenshots/1.png" alt="Main Screen" width="300"/>
        <img src="screenshots/2.png" alt="Book Details" width="300"/>
    </div>
    <div style="margin: 10px;">
        <p>Book Details</p>
        <img src="screenshots/4.png" alt="Preview Book" width="300"/>
    </div>
    <div style="margin: 10px;">
        <p>Preview Book</p>
        <img src="screenshots/3.png" alt="Get Book for Free" width="300"/>
    </div>
</div>

## Getting Started

Follow these instructions to get a copy of the project running on your local machine.

### Prerequisites

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/marcolous/Flutter-Bookly.git
   ```
2. Navigate to the project directory:
   ```bash
   cd Bookly
   ```
3. Install the dependencies:
   ```bash
   flutter pub get
   ```
4. Run the app:
   ```bash
   flutter run
   ```

## Usage

- Explore featured and best-selling books on the main screen.
- Click on a book to view its details, get the book for free, or preview it.
- Discover related books under "You May Also Like".

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any improvements or bug fixes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

If you have any questions or feedback, feel free to reach out to me at [louismarco226@gmail.com](mailto:louismarco226@gmail.com).
