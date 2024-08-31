# Recipe App 🍽️

This repository contains a Swift-based recipe app built using SwiftUI, developed as part of a tutorial series focused on learning advanced SwiftUI concepts. The app allows users to browse, select, and customize recipes while demonstrating the integration of various SwiftUI components and techniques.

## Features

- **Recipe Browsing**: View a collection of recipes, complete with images, descriptions, and preparation details.
- **Tab Navigation**: Navigate through the app using a clean and intuitive tab-based interface.
- **Dynamic UI with GeometryReader**: Responsive layouts and interactive elements using GeometryReader for precise control over UI components.
- **JSON Data Handling**: Load, parse, and display data from JSON files to dynamically populate the app with recipe content.
- **Portion Calculation**: Automatically adjust ingredient portions based on serving size, with an interactive Picker for easy adjustments.
- **Interactive Views**: Use swipe-able cards and custom styling to enhance user engagement with featured recipes.
- **EnvironmentObject**: Efficiently manage shared data across multiple views using the environmentObject modifier.
- **Lazy Stacks**: Improve performance with lazy-loading views using LazyVStack for long lists of ingredients and recipes.
- **Custom Styling**: Apply custom fonts and styles to ensure a cohesive and appealing design throughout the app.

## Getting Started

### Prerequisites

- **Xcode**: Ensure you have the latest version of Xcode installed on your Mac.

### Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/JuliTheProgrammer/recipe-app.git
   cd recipe-app
   ```

2. **Open in Xcode**:
   Open the `.xcodeproj` file in Xcode.

3. **Build and Run**:
   Select a simulator or a connected device, and click the "Run" button in Xcode to build and launch the app.

## Usage

- **Browse Recipes**: Use the tab navigation to explore various recipes and featured content.
- **View Details**: Tap on a recipe to see detailed information, including preparation steps, ingredients, and more.
- **Customize Portions**: Use the serving size picker to adjust ingredient portions according to your needs.
- **Interactive UI**: Swipe through featured recipes or tap on cards to explore more details.

## Learning Outcomes

This project covers a wide range of SwiftUI topics, including:

- Implementing TabViews and customizing tab interactions.
- Using GeometryReader for responsive and adaptable UI layouts.
- Parsing and handling JSON data within a SwiftUI app.
- Managing shared data flow across views with environmentObject.
- Creating swipe-able and interactive views using SwiftUI's TabViewStyle and PageTabViewStyle.
- Enhancing app performance with LazyVStack for efficient list rendering.
- Applying custom and system fonts to style the app consistently.

## Contributing

Contributions are welcome! Feel free to fork this repository, submit issues, or open pull requests to improve the app.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

Enjoy cooking with your personalized recipe app! 🍳👩‍🍳👨‍🍳
