# cursorDown

Moves the cursor down by the specified number of `lines` (default `1`)
relative to the current cursor position.

If the cursor is already at the edge of the screen, this has no effect.

To import and use `cursorDown` from the "AnsiDoc" module:

ts
import \* as AnsiDoc from "@effect/printer-ansi/AnsiDoc"
// Can be accessed like this
AnsiDoc.cursorDown
undefined

**Signature**

```ts
export declare const cursorDown: (lines?: number) => AnsiDoc
```
