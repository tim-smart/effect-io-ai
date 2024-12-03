# cursorBackward

Moves the cursor backward by the specified number of `columns` (default `1`)
relative to the current cursor position.

If the cursor is already at the edge of the screen, this has no effect.

To import and use `cursorBackward` from the "AnsiDoc" module:

```ts
import * as AnsiDoc from "@effect/printer-ansi/AnsiDoc"
// Can be accessed like this
AnsiDoc.cursorBackward
```

**Signature**

```ts
export declare const cursorBackward: (columns?: number) => AnsiDoc
```
