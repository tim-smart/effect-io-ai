Package: `effect`<br />
Module: `Stream`<br />

## Stream.splitLines

Splits strings on newlines. Handles both Windows newlines (`\r\n`) and UNIX
newlines (`\n`).

**Signature**

```ts
declare const splitLines: <E, R>(self: Stream<string, E, R>) => Stream<string, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4751)

Since v2.0.0