# Changelog

All notable changes to this project will be documented in this file.

## [4.1.0] - 2026-11-01

### Added

- Added WoW: Forever (Camelot, interface 16001) to the shared addon manifest.

### Changed

- Updated the Retail interface version to 120105 for WoW 12.1.5.

## [4.0.0] - 2026-09-22

### Added

- Added `README.md` with usage instructions, menu documentation, supported locales, and project information.
- Added **Move Right** and **Move Left** actions to each Spacer menu for changing its position among plugins on the current side of a Titan bar.
- Added translations for German, Spanish (Spain and Latin America), French, Italian, Korean, Russian, Simplified Chinese, and Traditional Chinese.

### Changed

- Consolidated the ten nearly identical Spacer modules into `Spacer/TitanSpacers.lua` while preserving the existing Spacer IDs and saved settings.
- Simplified the spacer text selection logic without changing any of the eight display combinations.
- Updated the **Display on Right Side** action to use Titan Panel's remove-and-readd positioning flow.
- Standardized the menu ending to **separator → Hide → Close**.
- Corrected the Brazilian Portuguese translation for **Show Symbol**.
- Updated the addon interface metadata for the current supported WoW game clients.
- Configured packaged releases to include `CHANGELOG.md` as the manual changelog.

### Removed

- Removed the unused legacy `Core/Classic` implementation.

## [3.7.2] - 2026-08-02

### Changed

- Updated the addon interface metadata for supported WoW game clients.

[4.1.0]: https://github.com/Canettieri/spacer/releases/tag/v4.1.0
[4.0.0]: https://github.com/Canettieri/spacer/releases/tag/v4.0.0
[3.7.2]: https://github.com/Canettieri/spacer/releases/tag/v3.7.2
