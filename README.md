# Simple robot to test different locator types

As the robot contains examples of Browser, Windows and Image locators it can only be executed on Windows.

Robot has a task for each locator type and shows different ways of approaching each target.

* Try Browser Locator:
  * Locates the `Accept all` -button of the standard cookie policy on google.com in three different ways
* Try Windows Locator:
  * Automates Windows Calculator actions using `Send Keys`, direct locator string and a stored locator created via Robocorp VS Code Extension or Automation Studio
* Try Image Locator:
  * Automates the cookie policy view of google.com again but this time using a stored image locator created via Robocorp VS Code Extension or Automation Studio
  * Image locator assumes resolution of 1920x1080

Robocorp tools store locators into `locators.json` and the related images are stored under `./images` -folder.