## cursorTo

Moves the cursor to the specified `row` and `column`.

Though the ANSI Control Sequence for Cursor Position is `1`-based, this
method takes row and column values starting from `0` and adjusts them to `1`-
based values.

**Signature**

```ts
declare const cursorTo: (column: number, row?: number) => AnsiDoc
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer-ansi/src/AnsiDoc.ts#L79)

Since v1.0.0