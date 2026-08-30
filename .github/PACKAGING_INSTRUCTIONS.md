The following is instructions on how to package a development version of BotC for distribution:

- Ensure that a game is not active by opening the Grimoire and clicking Reset Game.
- Verify that `./config/yosbr/chatbinds/binds.json` has all correct default bindings.
- Set FM variable `version` to your desired version.
- Set Custom Window Title in FancyMenu to `Blood on the Clocktower` + `<version>`
- Set FM variable `beta` to `false` if applicable.
- Do `/function ct:dev/package` in-game to automatically disable any active dev features.
- Do `Left CTRL + Left Alt + C` in any menu to disable the FM toolbar.
- Zip any included datapacks.
- Zip any included resource packs.
- Delete the following files and folders from your world file:
    - `/advancements`
    - `/data/Mansion_index`
    - `/data/Mineshaft_index`
    - `/data/Monument_index`
    - `/data/raids`
    - `/data/Stronghold_index`
    - `/data/Temple_index`
    - `/data/Village_index`
    - `/datapacks`
    - `/playerdata`
- Move (or copy) the world from `./saves` to `./`
- In the Modrinth client, disable Carpet mod.
- Set your profile name to `Blood on the Clocktower`.
- Export as an .mrpack with the following settings:

Modpack Name: `Blood on the Clocktower`
Version: `<version>`
Description: (none)
Included Files:
  - `./config/drippyloadingscreen`
  - `./config/enhancedgroups`
  - `./config/fancymenu`
  - `./config/flan`
  - `./config/melius-commands`
  - `./config/spiffyhud`
  - `./config/yosbr`
  - `./fancymenu_data`
  - `./mods`
  - `./resources`
  - `./saves`
  - `./scripts`
  - `./shaderpacks`
  - `./LICENSE`
  - If you have added any bindings, also include `./config/chatbinds`