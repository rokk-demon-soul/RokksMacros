RokksMacros
Version: 1.5
Author: Rokks on Sargeras
Description: 

An addon for World of Warcraft that allows templating and extended length for macros.

---

## Notes

Dragonflight came with a change to support empowered cast types. Frames listening on keypress events no longer fire on Key Down when using /click to trigger them. The UI must be set to listen for Key Up events instead.

For this addon to work you need to set your UI to function on Key Up events by typing the following command:

/console ActionButtonUseKeyDown 0

