Package: `effect`<br />
Module: `Schema`<br />

## Schema.ChunkIso

Iso representation used for `Chunk` schemas: an array of element values using
the element schema's `Iso` type.

**Signature**

```ts
type ChunkIso<Value> = ReadonlyArray<Value["Iso"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L8970)

Since v4.0.0