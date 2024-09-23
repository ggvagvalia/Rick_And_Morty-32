# Character & Episodes Explorer App 

This project is a SwiftUI-based application that interacts with an API to display information about characters and episodes. The app consists of three main pages, allowing users to browse through characters, episodes, and perform search functionality.

<img width="200" alt="Screenshot 2024-09-23 at 12 03 26 AM" src="https://github.com/user-attachments/assets/3d3d5e49-226d-4b8e-bf32-22e1246b758d">
<img width="200" alt="Screenshot 2024-09-23 at 12 06 34 AM" src="https://github.com/user-attachments/assets/eb266d40-d224-469e-af5f-5d7f6f109dda">


### Design

The UI design is entirely custom, giving the app a modern and clean look.
Grids are used for both character and episode listings to provide an intuitive user experience.
The character detail view is designed to present detailed information clearly, along with the list of related episodes.

<img width="200" alt="Screenshot 2024-09-22 at 11 40 11 PM" src="https://github.com/user-attachments/assets/5888a493-b8f0-4ebf-b2e5-44ca4231ca59">

<img width="200" alt="Screenshot 2024-09-22 at 11 40 40 PM" src="https://github.com/user-attachments/assets/d5750ae0-e7d0-4480-b7bd-3070e029d4c7">
<img width="200" alt="Screenshot 2024-09-22 at 11 40 23 PM" src="https://github.com/user-attachments/assets/47ec88db-0149-4e91-815b-f48ced5e9358">


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
