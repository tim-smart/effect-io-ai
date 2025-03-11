## cursorDown

Moves the cursor down by the specified number of `lines` (default `1`)
relative to the current cursor position.

If the cursor is already at the edge of the screen, this has no effect.

**Signature**

```ts
declare const cursorDown: (lines?: number) => Ansi
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer-ansi/src/Ansi.ts#L346)

Since v1.0.0