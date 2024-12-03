# cursorMove

Move the cursor position the specified number of `rows` and `columns`
relative to the current cursor position.

If the cursor is already at the edge of the screen in either direction, then
additional movement will have no effect.

To import and use `cursorMove` from the "Ansi" module:

```ts
import * as Ansi from "@effect/printer-ansi/Ansi"
// Can be accessed like this
Ansi.cursorMove
```

**Signature**

```ts
export declare const cursorMove: (column: number, row?: number) => Ansi
```
