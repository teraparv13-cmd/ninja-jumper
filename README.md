# 🥷 Ninja Jumper

A short 2D pixel-art platformer made with **Godot 4.7** and GDScript. One complete level: menu in, play, win, menu out.

> **Play in browser:** itch.io link here  ·  **Engine:** [Godot 4.7](https://godotengine.org)

## What it is

You play a ninja crossing one side-scrolling level of grass platforms, ledges and gaps. Grab the fruit and reach the finish marker — a **"YOU WIN!"** message appears and the game returns to the main menu.

Stuck in the geometry or fell off the map? Press **R** to restart instantly — a forgiving loop you can finish in a couple of minutes.

## Controls

| Action | Key |
| --- | --- |
| Move | ← → or A / D |
| Jump | Space / ↑ / W |
| Restart level | R |

## Features

- Platforming with gravity, movement and camera follow
- Tiled level with platforms, gaps, traps and fruit collectables
- Finish area: ends the run, back to the menu
- Instant restart (**R**) from a global game manager
- Main menu with a working Play button

## Running it locally

1. Install **Godot 4.7** (standard build — GDScript only, no C#).
2. Clone this repo.
3. Open `project.godot` and press **F5**.

Godot creates a `.godot/` cache folder on first open — normal, gitignored.

## Project structure

```
project.godot          # settings; main scene = main menu
main.tscn              # the level
finish.tscn / .gd      # goal -> win -> main menu
gamemanager.gd         # R = restart level
scenes/
  main menu.tscn       # entry point
  main_menu.gd         # Play button
  collectable.tscn     # fruit pickups
scense 2/              # player scene and script
assets/                # pixel art (see credits)
```

## Assets

All pixel art is from **Pixel Adventure 1** by **Pixel Frog** — free game assets:
https://pixelfrog-assets.itch.io/pixel-adventure-1

Used: terrain tiles, character sprites, fruit items, checkpoint/end markers and backgrounds. **The art is not mine** — it stays under that pack's license; credit Pixel Frog and read the terms before reusing.

## License

Code: free to read and build on. Art: property of Pixel Frog, per their pack license.
