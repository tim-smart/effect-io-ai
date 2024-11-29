# cursorUp

Moves the cursor up by the specified number of `lines` (default `1`) relative
to the current cursor position.

If the cursor is already at the edge of the screen, this has no effect.

To import and use `cursorUp` from the "AnsiDoc" module:

ts
import \* as AnsiDoc from "@effect/printer-ansi/AnsiDoc"
// Can be accessed like this
AnsiDoc.cursorUp
undefined

**Signature**

```ts
export declare const cursorUp: (lines?: number) => AnsiDoc
```
