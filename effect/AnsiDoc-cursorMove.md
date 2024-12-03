# cursorMove

Move the cursor position the specified number of `rows` and `columns`
relative to the current cursor position.

If the cursor is already at the edge of the screen in either direction, then
additional movement will have no effect.

To import and use `cursorMove` from the "AnsiDoc" module:

```ts
import * as AnsiDoc from "@effect/printer-ansi/AnsiDoc"
// Can be accessed like this
AnsiDoc.cursorMove
```

**Signature**

```ts
export declare const cursorMove: (column: number, row?: number) => AnsiDoc
```
