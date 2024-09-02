# Saudi National Day Quiz App



![ScreenRecording1446-02-29at10 37 23PM-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/475f1c78-6a43-4330-8dd8-07644adaf345)





The Saudi National Day Quiz App is a multiple-choice quiz application designed to educate users about Saudi Arabia.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Setup](#setup)
- [Project Structure](#project-structure)
- [Contribution](#contribution)
- [Screenshots](#screenshots)

## Introduction

The Saudi National Day Quiz App allows users to test their knowledge about Saudi Arabia through a series of multiple-choice questions. User scores and correct answers are saved using `GetStorage`, enabling users to return and continue the challenge at any time.

## Features

- Multiple-choice questions about Saudi Arabia’s history and culture.
- Progress and score saving using `GetStorage`.
- A simple, modern UI with a theme that reflects Saudi National Day.
- Real-time display of correct answers count.




## Project Structure

```plaintext
lib/
├── dataModel/
│   ├── dataSet.dart          # Contains the quiz questions data
│   ├── data_model.dart       # Data model for the quiz questions
│   └── user_model.dart       # Data model for the user
├── datalayer/
│   ├── question_data.dart    # Manages data related to questions
│   └── user_data.dart        # Manages user data
├── src/
│   ├── home/
│   │   ├── AnswerButton.dart # UI component for answer buttons
│   │   ├── questionList.dart # Displays the list of questions
│   │   ├── home_screen.dart  # Main UI screen
│   └── FirstScreen.dart      # Initial loading screen
├── main.dart                 # Entry point of the application
└── setup.dart                # Sets up the services used in the app (GetIt and GetStorage)
