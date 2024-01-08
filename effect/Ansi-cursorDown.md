# cursorDown

Moves the cursor down by the specified number of `lines` (default `1`)
relative to the current cursor position.

If the cursor is already at the edge of the screen, this has no effect.

To import and use `cursorDown` from the "Ansi" module:

```ts
import * as Ansi from "@effect/printer-ansi/Ansi"
// Can be accessed like this
Ansi.cursorDown
```

**Signature**

```ts
export declare const cursorDown: (lines?: number) => Ansi
```
