# Mailbox

The purpose of this homework is to leverage animations and gestures to implement more sophisticated interactions. We're going to use the techniques from this week to implement the Mailbox interactions.

Time spent: 8 hours of The West Wing... 6 1/2 hours?

## Completed Required User Stories

- [X] On dragging the message left:
  - [X] Initially, the revealed background color should be gray.
  - [X] As the reschedule icon is revealed, it should start semi-transparent and become fully opaque. If released at this point, the message should return to its initial position.
  - [X] After 60 pts, the later icon should start moving with the translation and the background should change to yellow.
    - [X] Upon release, the message should continue to reveal the yellow background. When the animation it complete, it should show the reschedule options.
  - [X] After 260 pts, the icon should change to the list icon and the background color should change to brown.
    - [X] Upon release, the message should continue to reveal the brown background. When the animation it complete, it should show the list options.

- [X] User can tap to dismiss the reschedule or list options. After the reschedule or list options are dismissed, you should see the message finish the hide animation.
- [X] On dragging the message right:
  - [X] Initially, the revealed background color should be gray.
  - [X] As the archive icon is revealed, it should start semi-transparent and become fully opaque. If released at this point, the message should return to its initial position.
  - [X] After 60 pts, the archive icon should start moving with the translation and the background should change to green.
    - [X] Upon release, the message should continue to reveal the green background. When the animation it complete, it should hide the message.
  - [X] After 260 pts, the icon should change to the delete icon and the background color should change to red.
    - [X] Upon release, the message should continue to reveal the red background. When the animation it complete, it should hide the message.


## Optional User Stories

- [X] Panning from the edge should reveal the menu.
  - [X] If the menu is being revealed when the user lifts their finger, it should continue revealing.
  - [X] If the menu is being hidden when the user lifts their finger, it should continue hiding.
- [X] Tapping on compose should animate to reveal the compose view.
- [X] Tapping the segmented control in the title should swipe views in from the left or right.
- [X] Shake to undo.

## The following **additional** features are implemented:

- [X] Experimented around with switch statements to simplify some of my complex if statements. I like them!

Please list two areas of the assignment you'd like to **discuss further with your peers** during the next class (examples include better ways to implement something, how to extend your app in certain ways, etc):

1. Well this got a little heavy because I was building it all within the same view (per some of the hints in the homework). It probably would have been easy to build into different views, but not sure how I'd resume the animation when I came back to this view. Maybe if I have more time, I'd experiment around with that.

## Walkthrough 

Here's a walkthrough of implemented user stories:

[![Mailbox](http://i.imgur.com/ZLUm3u0.png)](https://youtu.be/yaU1hNtMAAI "Mailbox")

<img src='http://i.imgur.com/link/to/your/gif/file.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />
