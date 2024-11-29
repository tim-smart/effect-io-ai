# cursorTo

Moves the cursor to the specified `row` and `column`.

Though the ANSI Control Sequence for Cursor Position is `1`-based, this
method takes row and column values starting from `0` and adjusts them to `1`-
based values.

To import and use `cursorTo` from the "AnsiDoc" module:

ts
import \* as AnsiDoc from "@effect/printer-ansi/AnsiDoc"
// Can be accessed like this
AnsiDoc.cursorTo
undefined

**Signature**

```ts
export declare const cursorTo: (column: number, row?: number) => AnsiDoc
```
