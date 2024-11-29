# cursorPrevLine

Moves cursor to beginning of the line the specified number of rows up
(default `1`).

To import and use `cursorPrevLine` from the "AnsiDoc" module:

ts
import \* as AnsiDoc from "@effect/printer-ansi/AnsiDoc"
// Can be accessed like this
AnsiDoc.cursorPrevLine
undefined

**Signature**

```ts
export declare const cursorPrevLine: (rows?: number) => AnsiDoc
```
