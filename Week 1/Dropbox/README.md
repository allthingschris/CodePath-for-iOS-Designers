# Dropbox

The purpose of this homework is to use Xcode to implement the flow between the screens of an application. We're going to use the techniques from this week to implement the Dropbox app from the signed out state to the basic signed in state.

Time spent: 8 hours in total (here and there... please ignore the use of "fuck" in any comments or class names ;)

## Completed Required User Stories

- [X] User can tap through the 3 welcome screens.
- [X] User can follow the create user flow.
  - [X] On the create user form, the user can tap the back button to go to the page where they can sign in or create an account.
  - [X] Before creating the account, user can choose to read the terms of service.
  - [X] After creating the account, user can view the placeholders for Files, Photos, and Favorites as well as the Settings screen.
  - [X] User can log out from the Settings screen.
- [X] User can follow the sign in flow.
  - [X] User can tap the area for "Having trouble signing in?".
  - [X] User can log out from the Settings screen.

## Optional User Stories (because I tell myself I'm a rockstar)

- [ ] User can view a detail view for one of the files and favorite the file.
- [X] User can actually type in the forms and tap to dismiss the keyboard.
- [X] User can swipe through the welcome screens instead of just tapping them.
- [X] User sees updated page indicator dots using page control.
- [X] User can view actual Dropbox Terms of Service in a web view.
- [X] User is presented with native action sheet to view and agree with terms of service.
- [X] User sees updated password strength as they type in password field.

#### The following **additional** features are implemented:

* The page indicator dots are using the correct colors to match the original screenshot. :)
* Also used a native action sheet for the "Trouble signing in" flow as well, though those don't do anything.
* Explored an option where the stack is destroyed when you click sign out, instead of just continually presenting over and over and over again each time you go through the app. Memory is only finite. ;-)
* Also linked up the sign in button on the very first page, for users who wish to skip the intro screens entirely.
* Edited the images to have empty fields and no keyboards for the screens where needed. (Though that was sorta an unwritten requirement.)
* Also set the background of my scroll views so that they matched the native content color. (for example, on the Terms of Service web view, if you scroll/snap, the background is white instead of the default gray. Or on the Settings scroll view, the default color is the baby blueish color instead of a stark white. Looks more natural.)

Please list two areas of the assignment you'd like to **discuss further with your peers** during the next class (examples include better ways to implement something, how to extend your app in certain ways, etc):

1. I'd like to dig deeper into scroll views. I feel like mine have a lot of extra give to them and aren't as snappy and tight as they are in production apps.
2. My "Sign In" and "Create" buttons are active even if there's nothing in the text fields for those screens. So I'd love to figure out if there's an easy way to validate these and disable these buttons until all the fields are complete. Probably some sorta loop or something.

## Walkthrough

[![Dropbox](http://i.imgur.com/4b5rEIm.png)](https://youtu.be/Vw479PLcW-I "Dropbox")

