# Titan Spacer

Titan Spacer adds up to ten independent spacer plugins to [Titan Panel](https://www.curseforge.com/wow/addons/titan-panel). Use them to organize, separate, or align plugins on any Titan bar.

Titan Panel is required.

## Features

- Ten individually configurable spacers (`Spacer #01` through `Spacer #10`).
- Compact, wide, symbol, and symbol-free display styles.
- Placement on the left or right side of a Titan bar.
- Controls to move a spacer left or right among the plugins on its current side.
- The same menu behavior and positioning controls used by other Titan plugins.

## How to use

1. Right-click a Titan Panel bar.
2. Open the **Interface** category. Its name may vary with your game language.
3. Enable one or more Spacer entries.
4. Right-click an enabled spacer to configure it.

Each spacer has these menu options:

- **Show Symbol** — displays `--` or `---` in the spacer.
- **Larger Spacer** — increases its width.
- **Display on Right Side** — moves the spacer between the left and right sides of its current Titan bar.
- **Bar Position** — moves the spacer left or right relative to other plugins on the same side.
- **Hide** — removes that spacer from the bar without changing its settings.

## Supported game versions

The addon supports Retail and the Classic game clients listed in `TitanSpacer.toc`. It uses Titan Panel's shared plugin APIs, so the same spacer behavior is available in every supported client.

## Languages

The addon includes translations for:

- English
- Brazilian Portuguese
- German
- Spanish (Spain and Latin America)
- French
- Italian
- Korean
- Russian
- Simplified Chinese
- Traditional Chinese

Unsupported locales fall back to English.

## Project structure

```text
Core/
  SpacerCore.lua       Menu actions and Titan Panel integration
  locale.lua           Menu translations
Spacer/
  TitanSpacers.lua     Registers the ten spacer plugins
TitanSpacer.toc        Addon metadata and load order
```

## Support

Please report problems or feature requests through the [GitHub issue tracker](https://github.com/Canettieri/spacer/issues). Include the WoW game version, Titan Panel version, game locale, and any error message shown by the client.
