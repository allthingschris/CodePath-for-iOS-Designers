# Carousel

The purpose of this homework is to leverage views, view properties, and events to create a high fidelity prototype that is difficult to distinguish from a production app. We're going to use the techniques from this week to implement the Carousel app from the signed out state to the basic signed in state.

Time spent: 7 episodes of The West Wing... so... 5 1/2 hours?

## Completed Required User Stories

1. Landing Screen
  - [X] Static photo tiles on the initial screen.
  - [X] User can scroll to reveal sign in buttons.
1. Sign In
  - [X] Tapping on email/password reveals the keyboard and shifts the scroll view and Sign In button up.
  - Upon tapping the Sign In button.
     - [X] If the username or password fields are empty, user sees an error alert.
     - [X] If credentials are incorrect, user sees a loading indicator for 2 seconds followed by an error alert.
     - [X] If the credentials are correct, user sees a loading indicator for 2 seconds followed by a transition to the Sign In screens.
1. Tutorial Screens
  - [X] User can page between the screens.
1. Image Timeline
  - [X] Display a scrollable view of images.
  - [X] User can tap on the conversations button to see the conversations screen (push).
  - [X] User can tap on the profile image to see the settings view (modal from below).
1. Conversations
  - [X] User can dismiss the conversations screen.
1. Settings
  - [X] User can dismiss the settings screen.
  - [X] User can log out.

## Optional User Stories

1. Landing Screen:  
  - [X] Photo tiles move, scale and rotate while user scrolls.
1. Sign In:
  - [X] User can scroll down to dismiss keyboard.
  - [X] User sees the form scale up and fade it in as the screen appears.
1. Sign up / Create a Dropbox:
  - [X] Tapping in the form reveals the keyboard and scrolls the form and button up so they remain visible.
  - [X] Tapping the "Agree to Terms" checkbox selects the checkbox.
  - [X] Tapping on "Terms" shows a web view with the terms.
  - [X] User is taken to the tutorial screens upon tapping the "Create a Dropbox" button.
1. Tutorial Screens:
  - [X] User can page between the screens with updated dots.
  - [X] Upon reaching the 4th page, the page indicator dots are hidden and "Take Carousel for a Spin" button is shown.
1. Learn more about Carousel: (instructions were missing for this section entirely... womp womp)
  - [ ] Show the "Learn more about Carousel" button in the photo timeline.
  - [ ] Tap the X to dismiss the banner.
  - [ ] Track the 3 events:
     - (1) View a photo full screen, (2) Swipe left and right and (3) Share a photo  - Upon completion of the events, mark them green.
  - [ ] When all events are completed, dismiss the banner.
1. Settings
  - [X] User is presented with an action sheet with actions to cancel or logout.


#### The following **additional** features are implemented:

- [X] Adjusted the offsets so that the original images are more closely to the original spots that they were in the example image
- [X] Explored using the original array and a loop for the animated images, just to make the code lighter and easier to manipulate if needed. It worked!
- [X] Added swipe up to continue on the landing page
- [X] Added the UI switch on the last page of the tutorial (and included that in my animated view) to complete the look of this, though it doesn't actually have any functionality

Please list two areas of the assignment you'd like to **discuss further with your peers** during the next class (examples include better ways to implement something, how to extend your app in certain ways, etc):

1. Offsets and animations. 
2. The rest was pretty simple to knock out. I'm getting better at debugging!

## Walkthrough 

Here's a walkthrough of implemented user stories:

[![Carousel](http://i.imgur.com/ZLUm3uO.png)](https://youtu.be/yaU1hNtMAAI "Carousel")

<img src='http://g.recordit.co/6XDCvj0FIq.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

## Notes or Challenges

Calling other methods, but I learned how to do that! :) And starting to get more comfortable with loops. It's just not how my brain thinks, but eventually I get there. 

Also, the initial values for the tiles on the intro view weren't correct for my build, so I manually adjusted. ... I... eyeballed it. lol
