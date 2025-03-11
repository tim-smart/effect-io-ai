## cursorUp

Moves the cursor up by the specified number of `lines` (default `1`) relative
to the current cursor position.

If the cursor is already at the edge of the screen, this has no effect.

**Signature**

```ts
declare const cursorUp: (lines?: number) => AnsiDoc
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer-ansi/src/AnsiDoc.ts#L102)

Since v1.0.0