# cursorForward

Moves the cursor forward by the specified number of `columns` (default `1`)
relative to the current cursor position.

If the cursor is already at the edge of the screen, this has no effect.

To import and use `cursorForward` from the "AnsiDoc" module:

```ts
import * as AnsiDoc from "@effect/printer-ansi/AnsiDoc"
// Can be accessed like this
AnsiDoc.cursorForward
```

**Signature**

```ts
export declare const cursorForward: (columns?: number) => AnsiDoc
```
