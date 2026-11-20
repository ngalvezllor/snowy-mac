Snowy brings interactive snow to window edges, desktop widgets, Spotlight, and a bottom-positioned Dock.

- **Crosswind Snowfall Entry**: Snow now naturally blows in from the upwind screen edge during horizontal winds (in addition to falling from the ceiling), maintaining a realistic, uniform snowfall distribution across the entire screen instead of leaving an empty wedge along the upwind border.
- **Window Tiling & System Arrangement Support**: Snow caps now remain smoothly attached to their windows during macOS Sequoia tiling shortcuts, Stage Manager arrangements, and minimize genie animations, rather than scraping off or detaching into loose snow.
- **Instant Window Close Detection**: Snowy now detects closed and hidden windows almost instantaneously (~150 ms idle cadence + immediate app lifecycle notifications), eliminating lingering snow caps after windows close.
- **iPhone Mirroring Alignment**: Snow naturally settles along the curved top bezel and rounded corners of the iPhone Mirroring window, rather than floating in mid-air above the window chrome.
- **Stable Widget Light Anchors**: Christmas lights pinned to desktop widgets reliably stay attached across widget content updates, background view refreshes, and system restarts.
- **Immediate Update Notifications**: Snowy automatically checks for updates whenever you open the status menu or settings window, as well as on wake from sleep, so update notifications appear without restarting the app.
- **In-App Release Notes & Quick Update**: Access release highlights and install updates with one click directly from the Snowy window sidebar.
- **Stage Manager Support**: Snow naturally accumulates on and slides along the 3D perspective-tilted strip thumbnails.
- **Universal Resolution Scaling**: Perspective projection automatically scales with display height across all MacBook screens and external displays.

### iPhone Mirroring Snow Alignment

| Before (v0.11.1) | After (v0.11.2+) |
| :---: | :---: |
| <img src="https://raw.githubusercontent.com/soloiaros/snowy-mac/main/.github/assets/iphone-mirroring-before.jpg" width="340" alt="Before: snow floating above iPhone Mirroring window" /> | <img src="https://raw.githubusercontent.com/soloiaros/snowy-mac/main/.github/assets/iphone-mirroring-after.jpg" width="340" alt="After: snow resting on iPhone Mirroring top bezel" /> |

Open the DMG and drag **Snowy.app** onto **Applications**. If you have an earlier copy, you can update directly via the in-app Update button in Snowy or the snowflake menu item.

Requires Apple Silicon and macOS 14 or later.

SHA-256 checksums are attached beside the DMG and ZIP files. Source build and usage instructions are in the README.

This beta uses local code signing. If macOS blocks the copy you downloaded here, go to **System Settings → Privacy & Security → Open Anyway** after trying to open it. If Finder icon anchors stop following after an update, check Snowy’s Accessibility permission.
