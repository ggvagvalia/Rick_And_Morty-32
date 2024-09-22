# Character & Episodes Explorer App

This project is a SwiftUI-based application that interacts with an API to display information about characters and episodes. The app consists of three main pages, allowing users to browse through characters, episodes, and perform search functionality.

### Design

The UI design is entirely custom, giving the app a modern and clean look.
Grids are used for both character and episode listings to provide an intuitive user experience.
The character detail view is designed to present detailed information clearly, along with the list of related episodes.
![Simulator Screenshot - iPhone 15 Pro - 2024-09-22 at 23 19 34](https://github.com/user-attachments/assets/3b2901c3-f5dd-4199-a90f-05490bbabed7)

![Simulator Screenshot - iPhone 15 Pro - 2024-09-22 at 23 24 06](https://github.com/user-attachments/assets/e1232764-422c-496f-b4de-a494d12809d4)
![Simulator Screenshot - iPhone 15 Pro - 2024-09-22 at 23 21 08](https://github.com/user-attachments/assets/7b286645-b3c8-4c27-9a9b-84acc10b2fa2)

![Simulator Screenshot - iPhone 15 Pro - 2024-09-22 at 23 25 52](https://github.com/user-attachments/assets/e15f3404-ce76-4fdc-9d80-fdddaab16046)
![Simulator Screenshot - iPhone 15 Pro - 2024-09-22 at 23 25 14](https://github.com/user-attachments/assets/d4e558e0-d0d1-4357-a6e2-8620f2055e31)


### Features 
The application uses TabView to provide navigation between three pages:

1. Character Page
Displays a grid of characters retrieved from the API.
Tapping on a character brings up a detailed view with the following information: Gender Status Species Origin
A list of episodes in which the character appears (shown using a LazyVStack).

2. Episodes Page
Displays a grid of episodes retrieved from the API.
Each episode card shows details such as the episode title and air date.

4. Search Page
Uses a LazyVStack to display search results.
Contains a Segmented Control for toggling between "Characters" and "Episodes."
Allows searching for characters or episodes by name.
The results are dynamically updated based on the search query and selected segment.
The search results are automatically cleared when switching between segments.

### Code Structure

The app follows a clean separation of concerns.
Logic is separated from the view layer, ensuring better organization and easier maintenance.
Views are divided into subviews for modularity and code reuse.

### Technologies Used

SwiftUI for building the UI.
TabView for navigation.
LazyVStack for efficiently loading dynamic content.
Segmented Control for switching between different search categories.
