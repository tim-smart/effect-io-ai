# cursorPrevLine

Moves cursor to beginning of the line the specified number of rows up
(default `1`).

To import and use `cursorPrevLine` from the "Ansi" module:

```ts
import * as Ansi from "@effect/printer-ansi/Ansi"
// Can be accessed like this
Ansi.cursorPrevLine
```

**Signature**

```ts
export declare const cursorPrevLine: (rows?: number) => Ansi
```
