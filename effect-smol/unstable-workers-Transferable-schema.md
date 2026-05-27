Package: `effect`<br />
Module: `Transferable`<br />

## Transferable.schema

Wraps a schema so encoding records transferables selected from the encoded
value, enabling worker messages to populate a `postMessage` transfer list.

**Signature**

```ts
declare const schema: { <S extends Schema.Top>(f: (_: S["Encoded"]) => Iterable<globalThis.Transferable>): (self: S) => Transferable<S>; <S extends Schema.Top>(self: S, f: (_: S["Encoded"]) => Iterable<globalThis.Transferable>): Transferable<S>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Transferable.ts#L152)

Since v4.0.0