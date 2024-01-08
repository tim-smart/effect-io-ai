# cursorNextLine

Moves cursor to beginning of the line the specified number of rows down
(default `1`).

To import and use `cursorNextLine` from the "Ansi" module:

```ts
import * as Ansi from "@effect/printer-ansi/Ansi"
// Can be accessed like this
Ansi.cursorNextLine
```

**Signature**

```ts
export declare const cursorNextLine: (rows?: number) => Ansi
```
