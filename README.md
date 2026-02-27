# DD-CopyCoords

A simple **FiveM standalone script** to copy your player coordinates in multiple formats directly to your clipboard. Perfect for spawn selection, configs, or development.

---

## Features

- Copy coordinates in **multiple formats**:
  1. **Regular** → `x, y, z, heading`
  2. **Vector4** → `vector4(x, y, z, heading)`
  3. **Vector3** → `vector3(x, y, z)`
  4. **Spawn config line** → `{ label = "New Spawn", coords = vector4(x, y, z, heading) },`
- Copies the result **automatically to your clipboard**.
- Standalone and easy to add to any FiveM server.
- Works on all FiveM builds (uses NUI for clipboard).

---

## Installation

1. Place the `DD-CopyCoords` folder in your `resources` folder.
2. Add the following to your `server.cfg`:

```cfg
ensure DD-CopyCoords
