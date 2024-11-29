# cursorBackward

Moves the cursor backward by the specified number of `columns` (default `1`)
relative to the current cursor position.

If the cursor is already at the edge of the screen, this has no effect.

To import and use `cursorBackward` from the "Ansi" module:

ts
import \* as Ansi from "@effect/printer-ansi/Ansi"
// Can be accessed like this
Ansi.cursorBackward
undefined

**Signature**

```ts
export declare const cursorBackward: (columns?: number) => Ansi
```
