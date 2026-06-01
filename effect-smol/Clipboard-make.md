Package: `@effect/platform-browser`<br />
Module: `Clipboard`<br />

## Clipboard.make

Builds a `Clipboard` service from primitive read and write operations, deriving `clear` and `writeBlob` helpers.

**Signature**

```ts
declare const make: (impl: Omit<Clipboard, "clear" | "writeBlob" | typeof TypeId>) => Clipboard
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/Clipboard.ts#L113)

Since v4.0.0