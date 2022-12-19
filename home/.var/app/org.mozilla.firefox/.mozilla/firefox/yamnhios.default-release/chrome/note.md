# Full list of examples
https://github.com/MrOtherGuy/firefox-csshacks

# Applied
[toolbars_below_content](https://github.com/MrOtherGuy/firefox-csshacks/blob/master/chrome/toolbars_below_content.css) withe last option to move menubar down, too, and with the tabs below the menubar

# Location
The location for flatpak'd Firefox user profiles is weird; it goes here:
/home/vinay/.var/app/org.mozilla.firefox/.mozilla/firefox/yamnhios.default-release/chrome

Here's the [reddit thread](https://www.reddit.com/r/firefox/comments/rq40cj/cant_find_profile_folder_for_firefox_flatpak_on/) with the info on how this was found

# Misc
- Need to go to about:config and turn on the preference for legacy stylesheets 
- Need to allow the flatpak access to the location of the symlinked file (flatseal), or just copy the actual file
