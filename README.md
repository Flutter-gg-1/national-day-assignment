![My Image](./assets/img_Tuwaiq.png)


![My Image](./assets/vid_result.gif)

# National Day Assignment

This Flutter application is designed to test users' knowledge with a series questions related to Saudi Arabia. The app presents questions to the user, allows them to select answers, and then displays their score at the end.

## Features

- **Multiple-Choice Quiz**: Users can answer multiple-choice questions about Saudi Arabia.
- **Color Feedback**: Each answer choice changes color based on whether it is correct or not.
- **Navigation**: Users can navigate through questions and view their results at the end.
- **Persistent Data**: Users' progress and answers are saved using local storage.

## Screens

- **Home Screen**: The initial screen of the app.
- **Question Screen**: Displays questions and allows users to select an answer.
- **Result Screen**: Shows the user's score after completing the quiz.

## Widgets

- **CustomFieldQuestion**: A custom widget for displaying each answer choice with color feedback based on correctness.
  - **Properties**:
    - `colorAnswerd`: The color used for the border and text to indicate whether the answer is correct or not.
    - `question`: The text of the answer choice.
    - `questionNumber`: The number representing the answer choice (e.g., "1", "2", "3", "4").
    - `index`: The index of the question.

- **CustomResult**: A widget to display the result of the quiz along with a congratulatory message and animation.
  - **Properties**:
    - Displays a Lottie animation.
    - Shows a congratulatory message.
    - Displays the user's score out of 10.

- **CustomHomeContent**: A widget for the home screen that includes a greeting and a button to start the quiz.
  - **Properties**:
    - `onPressed`: Callback function to handle button press.

## Packages Used

- `flutter`: SDK for building the app.
- `get_it`: Service locator for dependency management.
- `get_storage`: Local storage solution for persisting data.
- `lottie`: For rendering animations in the Result Screen.
