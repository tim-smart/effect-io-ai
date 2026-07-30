Package: `@effect/printer-ansi`<br />
Module: `AnsiDoc`<br />

## AnsiDoc.cursorMove

Move the cursor position the specified number of `rows` and `columns`
relative to the current cursor position.

If the cursor is already at the edge of the screen in either direction, then
additional movement will have no effect.

**Signature**

```ts
declare const cursorMove: (column: number, row?: number) => AnsiDoc
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer-ansi/src/AnsiDoc.ts#L91)

Since v1.0.0