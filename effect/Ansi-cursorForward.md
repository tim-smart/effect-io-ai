# cursorForward

Moves the cursor forward by the specified number of `columns` (default `1`)
relative to the current cursor position.

If the cursor is already at the edge of the screen, this has no effect.

To import and use `cursorForward` from the "Ansi" module:

```ts
import * as Ansi from "@effect/printer-ansi/Ansi"
// Can be accessed like this
Ansi.cursorForward
```

**Signature**

```ts
export declare const cursorForward: (columns?: number) => Ansi
```
